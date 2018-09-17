
class Order

  attr_reader :basket

  def initialize
    @basket = []
  end

  def order(dish, quantity)
  @basket << { dish: dish, quantity: quantity }
  "#{quantity} x #{dish} added"
end

def order_total
    return 0 if basket.empty?
    basket.map { |selection| choice_total(selection) }.reduce(:+)
  end


  private

def choice_total(choice)
choice[:quantity]*choice[:dish].price
end
end
