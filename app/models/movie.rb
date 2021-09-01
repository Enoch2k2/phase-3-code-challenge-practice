class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.save
  end
  
  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def average_rating
    avg_rating = 0

    self.reviews.each do |review|
      avg_rating += review.rating
    end

    return 0 if avg_rating == 0
    (avg_rating.to_f / self.reviews.length.to_f).to_f
  end

  def self.highest_rated
    self.all.sort { |a, b| b.average_rating <=> a.average_rating }.first
  end

  def reviews
    Review.all.select {|review| review.movie == self}.uniq
  end

  def reviewers
    self.reviews.map {|review| review.viewer }.uniq
  end

end
