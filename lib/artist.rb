class Artist
  attr_accessor :name, :title
  
  def initialize(name)
    @name = name
  end
  
  def add_song_by_name(title)
    song = song.new(title)
    song.artist = self
  end
  
  def song_count
    @@songs.length
  end
  
  def songs
    song.all.select {|song| song.artist = self}
  end
end