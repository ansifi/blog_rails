# app/controllers/posts_controller.rb

require 'net/http'

class PostsController < ApplicationController
  def index
    # Make a GET request to your API's /posts endpoint
    response = Net::HTTP.get(URI.parse('http://localhost:3000/posts.json'))
    @posts = JSON.parse(response)
  end
end
