class Menu

attr_reader :options

def initialize
  @options = []
  add_dishes
end

Choice = Struct.new(:dish, :price)

  def add_dishes
  @options << Choice.new("Beef Onglet" , 6.50)
  @options << Choice.new("Golden Curry" , 7)
  @options << Choice.new("Pork Dumplings" , 4)
  @options << Choice.new("Hot Sauce" , 1)
  @options << Choice.new("Braised Beef Ramen" , 7)
  @options << Choice.new("Margherita" , 6)
  end

end
