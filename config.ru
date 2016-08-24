
require 'rubygems'
require 'rack'

require File.join(File.dirname(__FILE__), 'lib/controller.rb')

use Rack::Static, urls: ['/css', '/js', '/img', '/fonts'], root: 'assets'

run SlowFood
