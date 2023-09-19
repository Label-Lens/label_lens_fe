class AlbumsController < ApplicationController
  def index
    @albums = AlbumsFacade.get_albums(params[:query])

  end
end