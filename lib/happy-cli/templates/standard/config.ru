require 'rubygems'
require 'bundler/setup'
Bundler.require

require 'happy/ext/permissions'
require 'happy/utils/app_spawner'

run Happy::Utils::AppSpawner.new
