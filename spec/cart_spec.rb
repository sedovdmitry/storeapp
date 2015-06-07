require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/antique_item"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do

  it "adds items into the cart" do 
    cart = Cart.new("dmitry")
    item1 = Item.new("kettle", price: 200)
    item2 = Item.new("car",    price: 200)
    cart.add_items(item1, item2)
    expect(cart.items).to include(item1, item2)
  end

end