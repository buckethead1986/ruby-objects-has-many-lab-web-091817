class Song
  attr_accessor :name, :artist #allow song to belong to an artist by setting (writer accessor) artist to that artist object.
  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end
