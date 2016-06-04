require_relative "item.rb"

class Receipt
  attr_accessor :item

  def initialize
    @cart = []
  end

  def add(item)
    @cart << item
  end

  def total_price
    total_cart = @cart.map { |x| x.price_taxed }
    total_cart.inject(:+)
  end

  def total_tax
    taxed_cart = @cart.map { |x| x.tax }
    taxed_cart.inject(:+)
  end

  def print
    @cart.each do |product|
      puts "#{product.name}: #{product.price_taxed}"
    end
    puts "Sales Tax: #{total_tax}"
    puts "Total: #{total_price}"
  end
end
