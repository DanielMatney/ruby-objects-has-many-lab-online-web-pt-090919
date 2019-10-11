class Artist
  attr_accessor :name, :title
  @@songs = []
  
  def initialize(name)
    @name = name
  end
  
  def add_song_by_name(title)
    song = song.new(title)
    @@songs << song
  end
  
  def song_count
    @@songs.length
  end
  
  def songs
    song.all.select {|song| song.artist = self}
  end
end