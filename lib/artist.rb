require "pry"

class Artist

  attr_accessor :name, :genre

  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, genre)
    Song.artist = self
  end

  def songs
    Song.all.select{|s| s.artist == self}
  end



end
