require 'faraday'

class ExternalApiController < ApplicationController
  def index
    # Make a GET request to your API's /posts endpoint
    response = Faraday.get('https://jsonplaceholder.typicode.com/posts')
    @posts = JSON.parse(response.body)
  end
end
