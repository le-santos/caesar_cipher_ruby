require 'rubygems'
require 'bundler/setup'
Bundler.require(:default, :test, :development)

project_root = File.dirname(File.expand_path('./app'))
Dir.glob(project_root + '/app/**/*.rb') {|file| require file}
Dir.glob(project_root + '/lib/**/*.rb') {|file| require file}
