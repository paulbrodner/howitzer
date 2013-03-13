require 'repeater'
require 'capybara'
require 'testingbot' if testingbot_driver?

Dir[File.join(File.dirname(__FILE__), "./utils/**/*.rb")].each {|f| require f}