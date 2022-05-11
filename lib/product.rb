class Product
  attr_reader :title, :price, :amount
  def initialize(params)
    @title = params[:title]
    @price = params[:price]
    @amount = params[:amount]
  end
end