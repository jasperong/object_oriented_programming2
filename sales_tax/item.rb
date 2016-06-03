class Item
  attr_accessor :name, :price, :type

  def initialize(name, price, type)
    @name = name
    @price = price
    @type = type
  end

  def tax
    if @type == "no_tax"
      @price
    elsif @type == "no_tax imported"
      @price * 1.05
    elsif @type == "basic"
      @price * 1.10
    elsif @type == "imported"
      @price * 1.15
    end
  end

end
