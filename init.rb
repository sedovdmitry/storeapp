require_relative "store_application"

StoreApplication.new

@items = []
@items << AntiqueItem.new("car", price: 101, weight: 100)
@items << RealItem.new({ :weight => 100, :price => 500, :name => "kettle" })
@items << RealItem.new({ :weight => 100, :price => 150, :name => "dishwasher" })

@items.each { |i| puts i.name }

cart = Cart.new("dmitry")
cart.add_item RealItem.new({ :weight => 100, :price => 500, :name => "car" })
cart.add_item RealItem.new({ :weight => 100, :price => 150, :name => "car" })
cart.add_item RealItem.new({ :weight => 100, :price => 120, :name => "kettle" })

method = "all_cars"
p cart.send(method)