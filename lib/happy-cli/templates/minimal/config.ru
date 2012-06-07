require 'rubygems'
require 'bundler/setup'
Bundler.require

Happy.route do
  # path 'foo' do
  #   render 'foo.erb'
  # end

  'Hello world!'
end

run Happy
