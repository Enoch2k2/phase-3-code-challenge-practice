# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


bob = Viewer.new("Bob")
susan = Viewer.new("Susan")
sarah = Viewer.new("Sarah")
mike = Viewer.new("Mike")

star_wars = Movie.new("Star Wars")
final_fantasy = Movie.new("Final Fantasy")
lotr = Movie.new("Lord Of The Rings")
harry_potter = Movie.new("Harry Potter")

bob.rate_movie(star_wars, 5)
sarah.rate_movie(star_wars, 5)
susan.rate_movie(star_wars, 4)
mike.rate_movie(star_wars, 5)

bob.rate_movie(lotr, 6)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# ===== EDITED ===== #
binding.pry
0
