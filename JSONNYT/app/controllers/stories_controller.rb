require 'json'
require 'net/http'

class StoriesController < ApplicationController
  def index

   
  end

  def get_stories
    nyt_URI = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/1.json?api-key=516569f75abbf12cc72f358e303147c9:15:74630877"
    response = Net::HTTP.get_response(URI.parse(nyt_URI))
    nyt_stories_json = JSON.parse(response.body)
    @nyt_stories = nyt_stories_json["results"]
    render partial: "stories_table", layout: false
  end
end
