class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.save
  end
  
  def save
    self.class.all << self
  end

  def reviews
    Review.all.select {|movie| movie.viewer == self}.uniq
  end

  def reviewed_movies
    self.reviews.map {|review| review.movie }.uniq
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    unless reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      review = self.reviews.find {|review| review.movie == movie }
      review.rating = rating
    end
  end

  def self.all
    @@all
  end
  
end
