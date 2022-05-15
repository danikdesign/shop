Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

class Product

  attr_accessor :price, :amount

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end

  def to_s
    "#{@price} UAH, (осталось #{@amount})"
  end

  def self.from_file(file_name)
    raise NotImplementedError
  end

end