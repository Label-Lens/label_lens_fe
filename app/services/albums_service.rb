class AlbumsService
  
  def self.find_albums(album, artist)
    response = conn('search_album').get do |faraday| 
      faraday.params['album'] = album
      faraday.params['artist'] = artist
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn(endpoint_url) 
    Faraday.new(url: "http://localhost:3000/api/v1/#{endpoint_url}")
  end

end

