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
    Songs.map {|song| song.artist}
  end

  def self.genres
    Songs.map {|song| song.genre}
  end

  def self.genre_count
    genre_count = {}
    Songs.each {|song| genre_count[song.genre]+=1}
    return genre_count
  end

  def self.artist_count
    artist_count = {}
    Songs.each {|song| artist_count[song.artist]+=1}
    return artist_count
  end
end
