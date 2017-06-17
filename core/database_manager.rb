Dir['core/file_managers/*.rb'].each { |file_manager| require file_manager }

class DatabaseManager

  TYPE_EXTENSIONS = {yaml: 'yml', csv: 'csv', json: 'json', xml: 'xml'}

  def initialize(instance)
    @file_path = "db/tables/#{instance.table_name}.#{TYPE_EXTENSIONS[instance::DATA_TYPE]}"
    @file_manager = Object.const_get("FileManagers::#{instance::DATA_TYPE.to_s.capitalize}Manager")
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
