require "rack/test"
require "rspec"

require File.expand_path("../../server.rb", __FILE__)

module Mixin
  include Rack::Test::Methods
  def app() 
    Sinatra::Application 
  end
end

RSpec.configure { |c| c.include Mixin }
