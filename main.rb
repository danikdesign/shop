require_relative 'lib/product.rb'
require_relative 'lib/movie.rb'
require_relative 'lib/book.rb'

product = Movie.new(title: "Leon", director: "Luc Besson", price: 990)

product.year = 1994
product.amount = 5

puts product




