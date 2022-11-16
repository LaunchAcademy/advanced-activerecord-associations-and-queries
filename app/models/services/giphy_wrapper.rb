class GiphyWrapper
  BASE_URL = "http://api.giphy.com/v1/gifs/search?api_key=#{ENV["GIPHY_KEY"]}"

  attr_reader :gif_urls

  def initialize(urls)
    @gif_urls = urls
  end

  def self.retrieve_gifs(query)
    giphy_response = giphy_request(query)
    parsed_response = parse_request(giphy_response)
    urls = gif_urls(parsed_response)
    GiphyWrapper.new(urls)
  end

  def self.giphy_request(query)
    return Faraday.get("#{BASE_URL}&q=#{query}")
  end

  def self.parse_request(response)
    return JSON.parse(response.body)  
  end

  def self.gif_urls(parsed_gif_array)
    image_urls = []
    parsed_gif_array["data"].each do |gif_data|
      image_urls<< gif_data["images"]["preview_gif"]["url"]
    end
    return image_urls
  end
end
