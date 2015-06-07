require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"

describe Item do 
  
  it "calculate price according to a special formula" do
    item = Item.new("kettle", price: 200)
    expect(item.price).to eq(232)
  end

end