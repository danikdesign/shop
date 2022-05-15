Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

require_relative 'lib/product.rb'
require_relative 'lib/movie.rb'
require_relative 'lib/book.rb'


book1 = Book.from_file("./data/books/b01.txt")

movie1 = Movie.from_file("./data/movies/mov1.txt")


puts book1
puts movie1





