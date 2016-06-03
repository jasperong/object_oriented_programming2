class Float
  def round_point05
    (self*2).round / 20.0
  end
end

class Item
  attr_accessor :name, :price, :type

  def initialize(name, price, type)
    @name = name
    @price = price
    @type = type
  end

  def tax
    if @type == "no_tax"
      @price.round_point05
    elsif @type == "no_tax imported"
      (@price * 1.05).round_point05
    elsif @type == "basic"
      (@price * 1.10).round_point05
    elsif @type == "imported"
      (@price * 1.15).round_point05
    end
  end
end
