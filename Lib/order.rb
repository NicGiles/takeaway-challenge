
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
    basket.each { |selection| choice_total(selection) }
  end


  private

  def choice_total(choice)
    puts "#{choice[:quantity]} x #{choice[:dish]}"

  end
end
