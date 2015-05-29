class Order

  attr_reader :items

  include ItemContainer

  def initialize
    @items = Array.new
    # ...
  end

  def place
    thr = Thread.new do 
      Pony.mail(:to => StoreApplication::Admin.email,
        :from => 'My Store <vmestomobilnika@gmail.com>',
        :via => :smtp, :via_options => {
          :address              => 'smtp.gmail.com',
          :port                 => '587',
          :enable_starttls_auto => true,
          :user_name            => 'vmestomobilnika@gmail.com',
          :password             => 'aq{VNd8CS]nPFU(Ndy_)L(BF',
          :authentication       => :plain,
          :domain               => "mail.google.com" },
        subject: 'New order has been placed', body: 'Please check back you admin page to see it!')
    end
    while(thr.alive?)
      puts "."
      sleep(1)
    end
  end
end