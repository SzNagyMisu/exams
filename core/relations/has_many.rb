module Relations
  class HasMany

    def initialize(instance)
      @instance = instance
    end

    def call(relation_name)

      @instance.send(:define_method, relation_name) do
        if self.id
          Object.const_get(relation_name.to_s.singularize.camelize)
              .where("#{self.class.to_s.underscore}_id": self.id)
        end
      end

    end

  end
end