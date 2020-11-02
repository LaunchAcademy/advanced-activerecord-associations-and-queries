class Api::V1::GifsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    # base_url = "http://api.giphy.com/v1/gifs/search?api_key=#{ENV["GIPHY_KEY"]}"
    # query = "steven-universe"
    # response = Faraday.get("#{base_url}&q=#{query}")
    
    # parsed_response = JSON.parse(response.body)
    # image_urls = []

    # parsed_response["data"].each do |gif_data|
    #   image_urls << gif_data["images"]["original"]["url"]
    # end
    

    gif_wrapper = GiphyWrapper.retrieve_gifs("steven-universe")
    render json: gif_wrapper.gif_urls
    # render json: image_urls
  end
end
