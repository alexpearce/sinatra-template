require "bundler"

Bundler.require

require File.join(File.dirname(__FILE__), "application.rb")

# Create a log directory, if it doesn't exist already
FileUtils.mkdir_p "log" unless File.exists? "log"

run Application
