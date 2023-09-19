class AlbumsService
  def self.conn(endpoint_url) 
    Faraday.new(url: "http://localhost:3000/api/v1/#{endpoint_url}")
  end

  def self.find_albums(album)
    response = conn('search_album').get do |faraday| 
      faraday.params['album'] = album
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end

