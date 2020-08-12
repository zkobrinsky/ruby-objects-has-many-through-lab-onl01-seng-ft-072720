class Song

  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @genre = genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    Artist.all.select{|a| a.song == self}
  end



end
