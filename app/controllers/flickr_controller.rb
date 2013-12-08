class FlickrController < ApplicationController

  def show
    query = params[:query]
    query = 'sydney' unless query.present?
    @page = params[:page] || 1
    @page = @page.to_i
    FlickRaw.api_key='7859fb2987ac7a93a2ace28e19d1edbf'
    FlickRaw.shared_secret='e24116eb9a93f84a'
    @images = flickr.photos.search(:text => query,
                                   :per_page => 10,
                                   :page => @page)
    if @images.count == 0
      flash[:status] = '<p>No results found'
      redirect_to root_path
    end
  end
end


# http://www.flickr.com/services/api/misc.urls.html
# http://www.flickr.com/services/api/flickr.photos.search.html
# http://hanklords.github.io/flickraw/
# binding.pry
