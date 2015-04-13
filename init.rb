require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"

#@items = []
#@items << VirtualItem.new({ :price => 101, :weight => 100, :name => "car" })
#@items << RealItem.new({ :weight => 100, :price => 500, :name => "kettle" })
#@items << RealItem.new({ :weight => 100, :price => 15, :name => "dishwasher" })

item1 = VirtualItem.new({ :price => 101, :weight => 100, :name => "car" })
item2 = RealItem.new({ :weight => 100, :price => 500, :name => "kettle" })
item3 = RealItem.new({ :weight => 100, :price => 99, :name => "dishwasher" })


cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3

puts cart.items.size