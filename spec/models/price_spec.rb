require 'rails_helper'

RSpec.describe Price, type: :model do
  context 'validation' do
    it 'wont be valid with value > 8 chars' do
      price = Price.first
      price.pricevalue = 123456789
      expect(price.valid?).to be false
    end
    it 'wont be valid without value' do
      price = Price.first
      price.pricevalue = nil
      expect(price.valid?).to be false
    end
  end
  context 'read currency' do
    it "will return 'рубли' with currency eq 1" do
      price = Price.new(pricevalue: 300, currency: 1)
      expect(price.read_currency(price.currency)).to eq "рубли"
    end
  end
end
