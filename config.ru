require "rest-client"
require "sinatra"

get "/" do
  RestClient.proxy = ENV["PROXIMO_URL"]
  RestClient.get("http://www.whatismyip.com").to_s
end
