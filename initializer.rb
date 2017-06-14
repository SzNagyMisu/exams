$LOAD_PATH << Dir::pwd
$LOADED_FEATURES.reject! { |feature| feature =~ /#{Dir::pwd}.*/ }

load './lib/database_record.rb'
Dir['app/models/*.rb'].each { |model| require model }
