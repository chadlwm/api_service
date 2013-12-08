#!/usr/bin/env rake

require File.expand_path('../config/boot', __FILE__)

desc "API Routes"
task :routes do
  MagicT::API.routes.each do |api|
    method = api.route_method.ljust(10)
    path = api.route_path
    puts "#{method} #{path}"
  end
end
