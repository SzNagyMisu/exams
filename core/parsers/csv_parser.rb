require 'csv'

module Parsers
  class CsvParser

    class << self
      def parse(data = '')
        CSV.parse(data, col_sep: ';', headers: true).map do |row|
          row.map { |key, value| [key, value =~ /\A\d*\z/ ? value.to_i : value]  }.to_h
        end
      end

      def convert(data)
        CSV.generate(col_sep: ';') do |csv|
          csv << data.first.keys
          data.each do |attributes|
            csv << attributes.values
          end
        end
      end
    end

  end
end