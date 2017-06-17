require 'json'

module FileManagers
  class JsonManager

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