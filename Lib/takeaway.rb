require 'menu'
require 'order'

class Takeaway
attr_reader :menu, :order

  def initialize
@menu = Menu.new
@order = Order.new
end

def show_menu
menu.add_dishes
end

def make_order
order.order
end


end
