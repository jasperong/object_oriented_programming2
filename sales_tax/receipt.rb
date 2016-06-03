require_relative "item"

class Receipt
  attr_accessor :item

  def initialize
    @cart = []
  end

  def add(item)
    @cart << item
  end

  def total
    taxed_cart = @cart.map { |x| x.tax }
    taxed_cart.inject(:+)
  end
end

book = Item.new("book", 12.49, "basic")
chocolate = Item.new("chocolate", 0.85, "no_tax imported")
c1 = Receipt.new
puts c1.add(book)
puts c1.add(chocolate)
puts chocolate.tax
puts book.tax
puts c1.total
