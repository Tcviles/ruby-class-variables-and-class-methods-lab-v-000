class Song
  attr_reader :name, :artist, :genre
  Songs = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    Songs << self
  end
