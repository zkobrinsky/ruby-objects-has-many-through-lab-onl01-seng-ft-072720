require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|s| s.artist == self}
  end

  def genres
    songs.collect{|s| s.genre}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    # binding.pry
  end



end
