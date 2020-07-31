# News Flash!
> Get access to all news sources in one site!

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Inspiration](#inspiration)
* [Contact](#contact)
* [License](#license)

## General info
News flash is a full-stack application that delivers live news feeds for a wide variety of categories from many different sources.  

Find out what is happening in the world today!

## Technologies
* Ruby - version 2.6.1
* Rails - version 6.0.3
* ActiveRecord - version 6.0
* Sinatra - version 2.0
* Sinatra-activerecord - version 2.0
* SQLite3 - version 1.4
* JSON - version 2.3
* Rest-Client - version 2.1

## Setup
To try out this project: 
1. Open an account with https://newsapi.org/
1. Clone the GitHub repository locally to your computer
1. In the command line, navigate to the root directory of this repository, and enter the following: 
  $ bundle install 
  $ touch .env 
1. Navigate to the .env folder, and paste in the following: 
  export API_KEY=YOUR_API_KEY_HERE (e.g. export API_KEY=15151515)
1. In the command of the root directory of the project folder, run: 
  $ rails db:migrate
1. Now save all files, on Windows: (start + alt + s), on Macs: (command + alt +s)
1. Run the following code in the command line while being in the most root folder of this project: 
  $ rails db:seed
  $ rails s 
1. Once the Rails server is running, navigate to the front end root folder in the command line and type in the following (please ensure node and npm are installed): 
  $ lite-server 


## Code Examples
```ruby
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
```

```JavaScript
fetch(general)
  .then(response => response.json())
  .then(articles => {
   
    for (i=0; i < 1; i++) {
      const $div = document.createElement("div")
      $div.classList.add("carousel-item")
      $div.classList.add("active")
      $div.innerHTML = `<div class="text-links"><a class="linky" href="${articles[i].url}"><h5>${articles[i].title}</h5></a></div><img class="d-block w-100 articles" src="${articles[i].image}" alt="First slide" onerror="this.src='./Google_news_logo.png'"></img>`
      $carouselInner.append($div)
    }
```


## Features 
* Browse today's top headlines by category
* See more info on any headline (title, summary, link)
* Click on a link to open up the full article on the web

## Status
Project is: finished with option to expand functionality and DRY out code.

## Inspiration
The inspiration for News Flash! came from our desire to quickly and easily see what's going on in the world today. We set out to build an application that would be fun, interactive, and highly practical. We hope you find using News Flash! as enjoyable and helpful as we do!

## Contact
Created by [Tony Kim](https://www.linkedin.com/in/hyung-kim/) and [Derek Turner](https://www.linkedin.com/in/derek-turner-1354b71b1/)

Feel free to contact us! 

## License
[Click to view](https://github.com/hjkmines/mod1_project/blob/master/LICENSE)