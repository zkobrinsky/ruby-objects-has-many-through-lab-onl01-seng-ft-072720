class Song

  attr_accessor :name, :genre

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

  def artists
    Artist.all.select{|a| a.song == self}
  end



end
