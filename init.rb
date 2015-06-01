require_relative "store_application"

StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :development

  app.admin do |admin|
    admin.email = "vmestomobilnika@gmail.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end
end

unless StoreApplication.frozen?
  StoreApplication.name = "My name"
end
#StoreApplication::Admin.email = "bla@bla.com"
#p StoreApplication::Admin.email

#p StoreApplication.environment
#p StoreApplication.name
#p StoreApplication::Admin.email
#p StoreApplication::Admin.login

@items = []
@items << AntiqueItem.new("car", price: 101, weight: 100)
@items << RealItem.new({ :weight => 100, :price => 500, :name => "kettle" })
@items << RealItem.new({ :weight => 100, :price => 150, :name => "dishwasher" })

#@items.each { |i| puts i.name }

cart = Cart.new("dmitry")
cart.add_item RealItem.new({ :weight => 100, :price => 500, :name => "car" })
cart.add_item RealItem.new({ :weight => 100, :price => 150, :name => "car" })
cart.add_item RealItem.new({ :weight => 100, :price => 120, :name => "kettle" })

#method = "all_cars"

#order = Order.new
#@items.each { |i| order.add_item(i) }
#order.place

order = Order.new
order.place
puts order.placed_at.strftime("%b %-d, %Y %H:%M:%S") # Jan 1, 1970 15:00:00
puts order.time_spent_on_sending_email