
require 'takeaway'
require 'menu'
require 'order'

describe Takeaway do

let(:menu)  { double :menu, :options => [{ :dish => "Beef Onglet", :price => 6.50 }]  }
let(:order)  { double :order }

subject(:takeaway) { described_class.new(menu, order) }

  describe '#show_menu' do
    it 'should show a list of dishes with prices' do
      expect { takeaway.show_menu }.to output("Beef Onglet: £6.5\n").to_stdout
      end
    end
end
