require 'rubygems'
require 'bundler/setup'
Bundler.require

app = Happy::Controller.build do
  route do
    'Hello world!'
  end
end

run app
