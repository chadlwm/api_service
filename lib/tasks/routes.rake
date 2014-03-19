desc "API Routes"
task :routes do
  MagicT::API.routes.each do |api|
    method  = api.route_method.ljust(10)
    version = api.route_version
    path    = api.route_path.gsub(':version', version).ljust(20)
    desc    = api.route_description
    puts "#{method} #{path} \##{desc}"
  end
end
