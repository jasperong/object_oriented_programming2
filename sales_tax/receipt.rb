require_relative "item"

class Receipt
  attr_accessor :item

  def initialize
    @cart = []
  end

  def add(item)
    @cart << item
  end
end
