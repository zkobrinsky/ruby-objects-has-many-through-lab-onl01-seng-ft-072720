require "pry"

class Artist

  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end



end