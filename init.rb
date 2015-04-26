require_relative "store_application"

StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :development

  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

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
#p cart.send(method)