require "rubygems"
require 'rspec'
require 'sauce'

# This should go in your spec_helper.rb file if you have one
Sauce.config do |config|
  config.browser_url = "http://saucelabs.com/"
  config.browsers = [
    ["Linux", "firefox", "3.6."]
  ]

  # uncomment this if your server is not publicly accessible
  #config.application_host = "localhost"
  #config.application_port = "80"
end

describe "The Sauce Labs website" do
  it "should have a home page" do
    page.open "/"
    page.is_text_present("Sauce Labs").should be_true
  end
end
