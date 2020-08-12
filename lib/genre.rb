class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
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

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select{|s| s.genre == self}
  end



end
