class AlbumsController < ApplicationController
  ALBUMS_PER_PAGE = 3
  
  def index
    # @current_page = params[:page] || 1
    @albums = AlbumsFacade.get_albums(params[:album], params[:artist]) 
    # require 'pry'; binding.pry
  end
end