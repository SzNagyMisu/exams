module Relations
  class BelongsTo

    def initialize(instance)
      @instance = instance
    end

    def call(relation_name)

      @instance.send(:define_method, relation_name) do
        foreign_key_value = self.send("#{relation_name}_id")
        if foreign_key_value
          Object.const_get(relation_name.to_s.capitalize.camelize)
              .find(foreign_key_value)
        end
      end

    end

  end
end