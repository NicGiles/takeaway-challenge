require 'menu'

describe Menu do
  subject(:food_menu) { described_class.new }

  describe "options" do
    it 'holds a list of dishes & prices in an array' do
      expect(food_menu).to receive(:options).and_return Array
      food_menu.options
    end

  it 'contains a range of options' do
    option_a = food_menu.options.first
    expect(option_a.dish).to eq("Beef Onglet")
    end

    it 'contains prices for each option' do
      option_a = food_menu.options.first
      expect(option_a.price).to eq(6.5)
      end
    end
end
