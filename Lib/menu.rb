class Menu

attr_reader :options

def initialize
  @options = [ {dish: "Golden Curry" , price: 7},
    {dish: "Beef Onglet" , price: 10}]
end

  def add_dishes(dish, price)
    @options << {dish: dish, price: price}
  end


end
