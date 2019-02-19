class Genre
  attr_reader :name, :genre, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Songs.all.select do |song|
      song.genre == self
    end
  end
  
  def genres
    self.songs.map do |song|
      song.genre
    end
  end
end