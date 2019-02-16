require 'rails_helper'

RSpec.describe Price, type: :model do
  context 'validation' do
    it 'wont be valid with value > 8 chars' do
      price = Price.first
      price.value = 123456789
      expect(price.valid?).to be false
    end
    it 'wont be valid without value' do
      price = Price.first
      price.value = nil
      expect(price.valid?).to be false
    end
  end
  context 'read currency' do
    it "will return 'рубли' with currency eq 1" do
      price = Price.first
      expect(price.read_currency(price.currency)).to eq "рубли"
    end
  end
end
