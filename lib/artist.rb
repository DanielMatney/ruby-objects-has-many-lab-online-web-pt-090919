class Artist
  attr_accessor :name, :title
  
  def initialize(name)
    @name = name
  end
  
  def add_song(title)
    song = Song.new(title)
    song.artist = self
  end
  
  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
    song.save
  end
  
  def song_count
    @@songs.length
  end
  
  def songs
    Song.all.select {|song| song.artist = self}
  end
  
  def song_count
    Song.songs.length
  end
end