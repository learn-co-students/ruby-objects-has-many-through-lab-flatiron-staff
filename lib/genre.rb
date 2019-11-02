class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    Song.all.map { |song| song.artist }
  end

  def self.all
    @@all
  end

end