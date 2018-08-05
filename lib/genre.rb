class Genre
  attr_accessor :name, :song, :artist, :artists, :songs, :genre_name, :artist_name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def songs
    Song.all.select do |matched_song|
      matched_song.genre == self
    end
  end

  def artists
    Song.all.map do |matched_song|
      matched_song.artist
    end
  end


end
