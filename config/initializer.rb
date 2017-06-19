$LOAD_PATH << Dir::pwd

require 'extensions/string'

require 'core/database_record'
Dir['app/*/*.rb'].each { |file| require file }
