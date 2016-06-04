# class Float
#   def round_point05
#     (self*2).round / 20.0
#   end
# end

class Item
  attr_accessor :name, :price, :type

  def initialize(name, price, type)
    @name = name
    @price = price
    @type = type
  end

  def tax
    if @type == "no_tax"
      0
    elsif @type == "no_tax imported"
      (@price * 0.05).round(2)
    elsif @type == "basic"
      (@price * 0.10).round(2)
    elsif @type == "imported"
      (@price * 0.15).round(2)
    end
  end

  def price_taxed
    @price + tax
  end


end
