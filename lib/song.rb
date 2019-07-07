class Song
  attr_reader :name, :artist, :genre
  Songs = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    Songs << self
  end

  def self.count
    Songs.count
  end

  def self.artists
    Songs.map do |song|
      song.artist
    end
  end
end
