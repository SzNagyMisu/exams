$LOAD_PATH << Dir::pwd

require 'extensions/string'

require 'core/database_record'
Dir['app/models/*.rb'].each { |model| require model }
