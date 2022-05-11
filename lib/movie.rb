class Movie < Product

  attr_reader :year, :director

  def initialize(params)
    super(params)
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    puts "Фильм \"#{@title}\", #{@year}, реж. #{@director}, #{@price} UAH (осталось #{@amount})"
  end
end