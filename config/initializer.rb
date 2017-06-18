$LOAD_PATH << Dir::pwd
$LOADED_FEATURES.reject! { |feature| feature =~ /#{Dir::pwd}.*/ }

require 'extensions/string'

require 'core/database_record'
Dir['app/models/*.rb'].each { |model| require model }
Dir['app/controllers/*.rb'].each { |controller| require controller }

require 'db/seeds'