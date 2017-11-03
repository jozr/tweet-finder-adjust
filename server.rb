require "bundler"
Bundler.require

Dotenv.load

get "/" do
  erb :index
end

get "/search" do
  query = params[:query]

  if query_present?(query)
  	@tweets = client.search("#{query}", result_type: "recent").take(10)
  	@info_message = "No matching tweets were found." if @tweets.empty?
  	erb :index
  else
  	@info_message = "Enter some text to search tweets."
  	erb :index
  end
end

def client
  @client ||= Twitter::REST::Client.new do |config|
    config.consumer_key    = ENV["CONSUMER_KEY"]
    config.consumer_secret = ENV["CONSUMER_SECRET"]
  end
end

def query_present?(query)
  query && !query.strip.empty?
end
