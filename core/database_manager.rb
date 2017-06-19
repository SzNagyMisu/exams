Dir['core/parsers/*.rb'].each { |file_parser| require file_parser }

class DatabaseManager

  TYPE_EXTENSIONS = {yaml: 'yml', csv: 'csv', json: 'json', xml: 'xml'} # xml not coded

  def initialize(caller_class)
    @file_path = "db/tables/#{caller_class.environment}/#{caller_class.table_name}.#{TYPE_EXTENSIONS[caller_class::DATA_TYPE]}"
    @file_manager = Object.const_get("Parsers::#{caller_class::DATA_TYPE.to_s.capitalize}Parser")
  end


  def read
    if File.exist?(@file_path)
      @file_manager.parse(File.read(@file_path))
    else
      []
    end
  end

  def write(content = [], mode = 'w')
    File.open(@file_path, mode) do |file|
      file.write(@file_manager.convert(content))
    end
  end

end
