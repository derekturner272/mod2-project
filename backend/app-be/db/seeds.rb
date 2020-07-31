require 'json'
require 'rest-client'
require 'dotenv/load'
require 'byebug'

User.destroy_all
Article.destroy_all
Business.destroy_all
Entertainment.destroy_all
General.destroy_all
Health.destroy_all
Science.destroy_all
Sport.destroy_all
Technology.destroy_all

key = ENV["API_KEY"]


# all categories
response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=#{key}")
parsed_response = JSON.parse(response)
top30 = parsed_response["articles"].last(30)

categories = ["business", "entertainment", "general", "health", "science", "sports", "technology"]

top30.each do |article|
  Article.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end

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

# entertainment
entertainment_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=#{key}")
entertainment_parsed = JSON.parse(entertainment_response)
entertainment_top30 = entertainment_parsed["articles"].take(30)

entertainment_top30.each do |article|
  Entertainment.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end

# general
general_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=#{key}")
general_parsed = JSON.parse(general_response)
general_top30 = general_parsed["articles"].last(5)

general_top30.each do |article|
  General.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end

# health
health_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=#{key}")
health_parsed = JSON.parse(health_response)
health_top30 = health_parsed["articles"].take(30)

health_top30.each do |article|
  Health.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end

# science
science_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=#{key}")
science_parsed = JSON.parse(science_response)
science_top30 = science_parsed["articles"].take(30)

science_top30.each do |article|
 Science.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end

# sports
sports_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=#{key}")
sports_parsed = JSON.parse(sports_response)
sports_top30 = sports_parsed["articles"].take(30)

sports_top30.each do |article|
  Sport.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end

# technology
technology_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=#{key}")
technology_parsed = JSON.parse(technology_response)
technology_top30 = technology_parsed["articles"].take(30)

business_top30.each do |article|
  Technology.create(
      title: article["title"], 
      image: article["urlToImage"], 
      url: article["url"],
      source: article["source"]["name"]
      )
end