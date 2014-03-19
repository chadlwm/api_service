namespace :db do  
  desc "migrate database"
  task :migrate do
    db_conf = File.expand_path("../../../config/database.yml", __FILE__)
    ActiveRecord::Base.establish_connection(YAML::load(File.open(db_conf))[ENV['RACK_ENV']])
    debugger
    ActiveRecord::Migrator.migrate(
      ActiveRecord::Migrator.migrations_paths, 
      ENV["VERSION"] ? ENV["VERSION"].to_i : nil
    )
  end  
end
