class AlbumsController < ApplicationController
  def index
    @albums = AlbumsFacade.get_albums(params[:album], params[:artist])
  end
end