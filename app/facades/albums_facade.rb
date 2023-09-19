class AlbumsFacade
  def self.get_albums(album)
    albums = AlbumsService.find_albums(album)
    albums[:data].map do |album|
      Album.new(album)
    end
  end
end