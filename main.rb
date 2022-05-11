require_relative 'lib/product.rb'
require_relative 'lib/movie.rb'
require_relative 'lib/book.rb'

movie_1 = Movie.new({title:"Леон", price:1000, amount:8, year:1994, director:"Люк Бессон"})

movie_2 = Movie.new({title:"Дурак", price:850, amount:4, year:2014, director:"Юрий Быков"})

book_1 = Book.new({title:"Преступление и наказание", price:500, amount:12, author:"Достоевский", genre:"роман"})

stock = [movie_1, movie_2, book_1]

for item in stock do
  item.to_s
end


