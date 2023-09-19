class Album
  attr_reader :id, :label, :album_name, :artist, :image, :link

  def initialize(data) 
    @id = data[:attributes][:id]
    @label = data[:attributes][:label]
    @album_name = data[:attributes][:album_name]
    @artist = data[:attributes][:artist]
    @image = data[:attributes][:image]
    @link = data[:attributes][:link]
  end
end