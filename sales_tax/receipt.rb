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

  def print
    puts @cart.each {|product| "#{product.name}: #{product.price_taxed}"}
    puts "Sales Tax: #{product.tax.inject(:+)}"
    puts @cart.total
  end
end
