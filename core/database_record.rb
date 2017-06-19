require_relative 'database_manager'
require_relative 'relations/belongs_to'
require_relative 'relations/has_many'

class DatabaseRecord

  COLUMN_NAMES = []
  DATA_TYPE = :yaml


  def initialize(attributes = {})
    self.class.send(:attr_accessor, *column_names)
    self.attributes = attributes
  end


  class << self

    def abstract_class?
      defined?(@abstract_class) ? @abstract_class : false
    end
    attr_writer :abstract_class

    def table_name
      unless abstract_class?
        @table_name = to_s.underscore.pluralize unless defined?(@table_name)
        @table_name
      end
    end
    attr_writer :table_name

    def environment
      @environment || :development
    end
    attr_writer :environment

    def all
      manager.read.map { |attributes| build(attributes) }
    end

    def find_all_by(conditions = {})
      all.select(&concat_conditions(conditions))
    end
    alias_method :where, :find_all_by

    def find_by(conditions = {})
      all.find(&concat_conditions(conditions))
    end

    def find(id)
      find_by(id: id) # || raise
    end

    %w(first last take count).each do |array_method|
      define_method array_method do
        all.send(array_method)
      end
    end

    alias_method :build, :new

    def create(attributes = {})
      build(attributes).save
    end

    def seed(data = [])
      manager.write(data)
    end


    # relation methods

    def has_many(relation_name)
      Relations::HasMany.new(self).(relation_name)
    end

    def belongs_to(relation_name)
      Relations::BelongsTo.new(self).(relation_name)
    end


    private

    def manager
      @manager ||= DatabaseManager.new(self)
    end

    def concat_conditions(conditions)
      proc do |elem|
        conditions.all? do |column, value|
          column_value = elem.send(column)
          value.is_a?(Enumerable) ? value.include?(column_value) : column_value == value
        end
      end
    end

  end
  self.abstract_class = true


  def save
    modify_file do |all|
      self.id ||= all.map(&:id).max + 1

      (all.find { |record| record.id == id }&.attributes = attributes) || all << self
      all
    end
  end

  def update(attributes = {})
    self.attributes = attributes
    save
  end

  def delete
    modify_file do |all|
      all.delete_if { |record| record.id == id }
    end
  end

  def attributes
    column_names.map { |column_name| [column_name, send(column_name)] }.to_h
  end
  alias_method :to_h, :attributes

  def attributes=(attributes = {})
    attributes = attributes.map { |column, value| [column.to_s, value] }.to_h # to ensure they are all strings

    column_names.each do |column|
      instance_variable_set(
          "@#{column}",
          attributes.fetch(column.to_s, instance_variable_get("@#{column}"))
      )
    end
  end


  private

  def column_names
    %w(id) + self.class::COLUMN_NAMES
  end

  # load whole file, change one record, save whole file
  def modify_file
    self.class.instance_variable_get('@manager').write(
        yield(self.class.all).map(&:to_h)
    )
    self
  end

end
