require 'rubygems'
require 'grape'
require 'debugger'
require 'active_record'

ENV['RACK_ENV']  ||= "development"
ENV['RACK_ROOT'] ||= File.expand_path("../../", __FILE__)

require File.expand_path("../application", __FILE__)

