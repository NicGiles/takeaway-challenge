require_relative 'menu'
require_relative 'order'

class Takeaway
attr_reader :menu, :order

  def initialize(menu = Menu.new, order = Order.new)
    @menu = menu
    @order = order
end

def show_menu
  menu.options.each { |dish| puts "#{dish[:dish]}: £#{dish[:price]}"}
end

def make_order(dish, quantity)
  order.order(dish, quantity)
end

end
