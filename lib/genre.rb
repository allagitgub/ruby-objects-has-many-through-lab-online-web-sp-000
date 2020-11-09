class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre.name == self.name
    end
  end

  def artists
    artists = []
    self.songs.each do |song|
      puts song.name
      puts song.artist
      artists << song.artist
    end
    artists
  end
end
