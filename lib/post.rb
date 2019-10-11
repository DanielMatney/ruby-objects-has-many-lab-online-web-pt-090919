class Post
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author.name != self.author.name
      return nil
    end
    self.author.name
  end
end