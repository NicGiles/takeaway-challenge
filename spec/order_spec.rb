# Spec file for menu class

require 'order'

describe Order do
  subject(:customer_order)  { described_class.new }

  describe "#order" do
    it 'adds customer orders to the basket' do
      expect(customer_order.order('Beef Onglet', 3)).to eq('3 x Beef Onglet added')
    end
  end

  describe "#order_total" do
    it 'collates dishes customer has ordered' do
      customer_order.order('Cheerios', 3)
      customer_order.order('Beef Onglet', 3)
      expect { customer_order.order_total }.to output("3 x Cheerios\n3 x Beef Onglet\n").to_stdout
    end
  end
end
