class Book < Product

  attr_reader :author, :genre

  def initialize(params)
    super(params)
    @author = params[:author]
    @genre = params[:genre]
  end

  def to_s
    puts "Книга \"#{@title}\", #{@genre}, автор - #{@author}, #{@price} UAH (осталось #{@amount})"
  end
end