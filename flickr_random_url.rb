require "flickraw"
# use this to cache version
#require 'flickraw-cached'

## https://github.com/hanklords/flickraw
# return random image url from Flickr Favourites

module Jekyll
  class FlickrRandomUrl < Liquid::Tag
    
    def initialize(tag_name, text, token)
      super 
      
      flickr = FlickRaw::Flickr.new
      flickr.access_token = Jekyll.configuration({})['flickr']['access_token']
      flickr.access_secret = Jekyll.configuration({})['flickr']['access_secret']
      
      list = flickr.favorites.getList
      photo = list[rand(list.size)]
      info = flickr.photos.getInfo(:photo_id => photo.id)
      @url = FlickRaw.url_b(info) 
  
    end
  
    def render(context)
      @url ? "#{@url}" : "#{image-url('default.jpg')}"
    end
  
  end
end

FlickRaw.api_key  = Jekyll.configuration({})['flickr']['api_key']
FlickRaw.shared_secret = Jekyll.configuration({})['flickr']['shared_secret']
Liquid::Template.register_tag('flickr_random_url', Jekyll::FlickrRandomUrl)
