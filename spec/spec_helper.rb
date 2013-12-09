require 'rspec'
require 'rack/test'
ENV["RACK_ENV"] = 'test'

require File.expand_path("../../config/boot", __FILE__) 

