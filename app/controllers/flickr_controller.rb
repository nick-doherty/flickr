class FlickrController < ApplicationController

  def show
    query = params[:query]
    query = 'sydney' unless query.present?
    FlickRaw.api_key='7859fb2987ac7a93a2ace28e19d1edbf'
    FlickRaw.shared_secret='e24116eb9a93f84a'
    @images = flickr.photos.search(:text => query)
    binding.pry
    @urls['flickr']=FlickRaw.url(@images)
  end
end


# http://www.flickr.com/services/api/misc.urls.html
# http://www.flickr.com/services/api/flickr.photos.search.html
# http://hanklords.github.io/flickraw/
