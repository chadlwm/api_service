# Set autoload directory
%w{app lib}.each do |dir|
  Dir.glob(File.expand_path("../../#{dir}", __FILE__) + '/**/*.rb').each do |file|
    require file
  end
end

Dir.mkdir('log') unless File.exist?('log')

logger = nil
case ENV["RACK_ENV"]
when "production"
  logger = MagicT::API::Logger.new(ENV['RACK_ROOT'] + "/log/production.log")
  logger.level = MagicT::API::Logger::WARN
when "development"
  logger = MagicT::API::Logger.new(ENV['RACK_ROOT'] + "/log/developemtn.log")
  logger.level = MagicT::API::Logger::DEBUG
else
  logger = MagicT::API::Logger.new("/dev/null")
end

db_conf_path = File.expand_path("../database.yml", __FILE__)
ActiveRecord::Base.establish_connection YAML::load(File.open(db_conf_path))[ENV["RACK_ENV"]]

logger.info 'api service is ready to run'
