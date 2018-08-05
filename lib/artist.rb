require 'pry'

class Artist
  attr_accessor :name, :songs, :song, :genre, :artist, :artist_name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    #binding.pry
    #new_song = Song.new(song, genre)
    song.artist = self
    @songs << song
    @songs
    #binding.pry
  end

  def songs
    Song.all.select do |matched_song|
      matched_song.artist == self
    end
  end

  def genres
    Song.all.map do |matched_song|
      matched_song.genre
    end
  end
end
