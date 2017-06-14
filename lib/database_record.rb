require_relative 'database_manager'
require_relative 'relations/belongs_to'
require_relative 'relations/has_many'

class DatabaseRecord

  COLUMN_NAMES = []


  def initialize(attributes = {})
    column_names = %w(id) + self.class::COLUMN_NAMES
    self.class.send(:attr_accessor, *column_names)

    column_names.each do |column|
      instance_variable_set("@#{column}", attributes[column])
    end

    @manager = DatabaseManager.new
  end


  class << self

    def all

    end

    def find(id)
      find_by(id: id) # || raise
    end

    def find_all_by(conditions = {})

    end
    alias_method :where, :find_all_by

    def find_by(conditions = {})

    end

    def build(attributes = {})

    end

    def create(attributes = {})

    end


    # relation methods

    def has_many(relation_name)

    end

    def belongs_to(relation_name)
      
    end

  end


  def save

  end

  def update(attributes = {})

  end

  def delete

  end

  def attributes

  end

  def attributes=

  end

end
