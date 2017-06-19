require 'json'

module Parsers
  class JsonParser

    class << self
      def parse(data = '')
        JSON.parse(data)
      end

      def convert(data)
        data.to_json
      end
    end

  end
end