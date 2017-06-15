$LOAD_PATH << Dir::pwd
$LOADED_FEATURES.reject! { |feature| feature =~ /#{Dir::pwd}.*/ }

require 'extensions/string'
load './core/database_record.rb'
Dir['app/models/*.rb'].each { |model| require model }
