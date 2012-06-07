require 'rubygems'
require 'bundler/setup'
Bundler.require

require 'happy/extras/scriptable'

Happy.route do
  run Happy::Extras::Scriptable, :directory => './app'
end

run Happy
