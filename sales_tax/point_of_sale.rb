#ITEMS
require_relative "receipt.rb"

book = Item.new("book", 12.49, "no_tax")
cd = Item.new("music CD", 14.99, "basic")
chocolate = Item.new("chocolate bar", 0.85, "no_tax")

imp_chocolate1 = Item.new("imported box of chocolates", 10.50, "no_tax imported")
imp_perfume1 = Item.new("imported bottle of perfume", 47.50, "imported")

perfume = Item.new("bottle of perfume", 18.99, "basic" )
imp_perfume2 = Item.new("imported bottle of perfume", 27.99, "imported")
pills = Item.new("packet of headache pills", 9.75, "no_tax")
imp_chocolate2 = Item.new("box of imported chocolates", 11.25, "no_tax imported")


cart_1 = Receipt.new
cart_1.add(book)
cart_1.add(cd)
cart_1.add(chocolate)

cart_2 = Receipt.new
cart_2.add(imp_chocolate1)
cart_2.add(imp_perfume1)

cart_3 = Receipt.new
cart_3.add(perfume)
cart_3.add(imp_perfume2)
cart_3.add(pills)
cart_3.add(imp_chocolate2)

cart_1.print
cart_2.print
cart_3.print
