# Spec file for menu class

require 'order'

describe Order do
  subject(:customer_order) { described_class.new }
  let(:choice)          { double :choice, :name => "Beef Onglet", :price => 6.50 }


  describe "order" do
    it 'adds customer choices to the basket' do
      expect(customer_order.order('Beef Onglet', 3)).to eq('3 x Beef Onglet added')
    end

    describe "order_total"
    it 'should give the price of whole order' do
      customer_order.order(choice, 3)
      expect(customer_order.order_total).to eq 19.50
end
end
end
