require 'pry'
class Artist
  attr_accessor :name, :title
  
  def initialize(name)
    @name = name
  end
  
  def add_song(title)
    song = Song.new(title)
  end
  
  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
  end
  
  def self.song_count
    Song.all.length
  end
  
  def songs
    Song.all.select {|song| song.artist = self}
  end
end