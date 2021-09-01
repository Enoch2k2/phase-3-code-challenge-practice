class Review
  attr_accessor :viewer, :movie, :rating

  @@all = []
  
  def initialize(viewer, movie, rating)
    self.viewer = viewer
    self.movie = movie
    self.rating = rating
    self.save
  end
  
  def save
    self.class.all << self
  end

  def self.all
    @@all
  end
end
