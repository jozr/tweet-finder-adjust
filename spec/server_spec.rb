require File.expand_path("../spec_helper.rb", __FILE__)

describe "Tweet Finder" do
  it "should render title and search form" do
    get "/"
    expect(last_response.body).to include("Tweet Finder")
    expect(last_response.body).to include("form action=\"/search\"")
  end

  context "no substantial text is entered" do 
    it "should return an informative message" do
      get "/search?query=+++"
      expect(last_response.body).to include("Enter some text to search tweets.")
    end
  end

  context "no tweets are matching the query" do
    it "should return an informative message" do
      get "/search?query=asdfklc;aeisaldfksd,mc'asdofjksadfm;lsdfm"
      expect(last_response.body).to include("No matching tweets were found.")
    end 
  end
end
