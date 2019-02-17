require 'rails_helper'

RSpec.describe Offer, type: :model do
  context 'validation' do
    it 'wont validate without rent or sale in offer_type' do
      offer = Offer.first
      expect(offer.valid?).to be true
      offer.offertype = 'sub-rent'
      expect(offer.valid?).to be false
    end
  end
  context 'read offet_type translation' do
    it "will return 'аренда'" do
      offer = Offer.first
      expect(offer.read_offertype).to eq "аренда"
    end
  end
end

