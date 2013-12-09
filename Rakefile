#!/usr/bin/env rake

require File.expand_path('../config/boot', __FILE__)

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |t|
  #debugger
  #t.warning = true
  #t.rcov = true
end

RSpec::Core::RakeTask.new("spec:coverage") do |t|
 debugger
 t.rcov = true
 t.rcov_opts = %w{--include apis -Ispec
 #                 --exclude gems\/,spec\/,features\/,seeds\/}
 #t.spec_opts = ["-c"]
end

task :default => :spec

Dir.glob(File.expand_path("../lib", __FILE__) + '/tasks/*.rake').each do |file|
  load file
end

