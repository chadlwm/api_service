#!/usr/bin/env rake

require File.expand_path('../config/boot', __FILE__)

require 'rspec/core/rake_task'

desc 'run all test'
RSpec::Core::RakeTask.new(:spec)

task :default => :spec

Dir.glob(File.expand_path("../lib", __FILE__) + '/tasks/*.rake').each do |file|
  load file
end

