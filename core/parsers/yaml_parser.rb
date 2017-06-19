require 'yaml'

module Parsers
  class YamlParser

    class << self
      def parse(data = '')
        YAML.load(data)
      end

      def convert(data)
        # handle exception? Array|Hash
        data.to_yaml
      end
    end

  end
end