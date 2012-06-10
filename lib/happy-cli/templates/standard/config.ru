require 'rubygems'
require 'bundler/setup'
Bundler.require

require 'happy/extras/permissions'
require 'happy/extras/code_reloader'

class MyReloader < Happy::Extras::CodeReloader
  set :directory, './app/controllers/*.rb'
  set :controller, '::RootController'
end

run MyReloader
