class Song
  attr_reader :name, :genre
  attr_accessor :artist
  
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    self.class.all << self
  end

  def self.all
    @@all
  end
end