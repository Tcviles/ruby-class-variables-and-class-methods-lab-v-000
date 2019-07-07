class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@artists.include?(artist) ? true : @@artists.push(artist)
    @@genres.include?(genre) ? true : @@genres.push(genre)
  end

  def self.count
    @@count
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
