class Song
  attr_accessor :artist, :genre, :name, :song
  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
