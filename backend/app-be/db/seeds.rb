require 'json'
require 'rest-client'
require 'dotenv/load'
require 'byebug'

User.destroy_all
Article.destroy_all

key = ENV["API_KEY"]

# all categories
response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=#{key}")
parsed_response = JSON.parse(response)
top30 = parsed_response["articles"].take(30)

categories = ["business", "entertainment", "general", "health", "science", "sports", "technology"]

# business
business_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=#{key}")
business_parsed = JSON.parse(business_response)
business_top30 = business_parsed["articles"].take(30)

business_top30.each do |article|
  Business.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end

top30.each do |article|
  Article.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end

