require_relative 'database_manager'
require_relative 'relations/belongs_to'
require_relative 'relations/has_many'

class DatabaseRecord

  COLUMN_NAMES = []
  DATA_TYPE = :yaml

  attr_reader :table_name


  def initialize(attributes = {})
    self.class.send(:attr_accessor, *column_names)
    self.attributes = attributes
  end


  class << self

    def table_name
      @table_name = to_s.underscore.pluralize unless defined?(@table_name)
      @table_name
    end

    def table_name=(value)
      @table_name = value
    end

    def all # todo store in @all -> update on #save(?)
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

    %w(first last count).each do |array_method| # todo inherit from Array(?)
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


  def save
    # self.class.all -> modify -> self.class.manager.write
  end

  def update(attributes = {})
    self.tap { |instance| instance.attributes = attributes }.save
  end

  def delete

  end

  def attributes
    column_names.map { |column_name| [column_name, send(column_name)] }.to_h
  end

  def attributes=(attributes = {})
    attributes = attributes.map { |column, value| [column.to_sym, value] }.to_h # to ensure they are symbols

    column_names.each do |column|
      instance_variable_set("@#{column}", attributes[column.to_sym])
    end
  end


  private

  def column_names
    %w(id) + self.class::COLUMN_NAMES
  end

end
