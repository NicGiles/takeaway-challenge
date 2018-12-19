require 'menu'

describe Menu do
  subject(:food_menu) { described_class.new }

  describe "options" do
    it 'holds a list of dishes & prices in an array' do
      expect(food_menu).to receive(:options).and_return Array
      food_menu.options
    end

    it 'contains a range of options' do
      expect(food_menu.options).to eq [ {dish: "Golden Curry" , price: 7},
      {dish: "Beef Onglet" , price: 10}]
    end
  end

  describe "#add_dishes" do
    it 'allows owners to add dishes to their menu' do
      food_menu.add_dishes("Pimpin' Dave's very expensive Kickin' Lickin' Chicken", 50)
      expect(food_menu.options).to eq [ {dish: "Golden Curry" , price: 7},
      {dish: "Beef Onglet" , price: 10}, {dish: "Pimpin' Dave's very expensive Kickin' Lickin' Chicken" , price: 50}]
    end
  end
end
