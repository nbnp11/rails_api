require 'rails_helper'

RSpec.describe Offer, type: :model do
  context 'validation' do
    it 'wont validate without rent or sale in offer_type' do
      offer = Offer.first
      expect(offer.valid?).to be true
      offer.offer_type = 'sub-rent'
      expect(offer.valid?).to be false
    end
  end
  context 'read offet_type translation' do
    it "will return 'аренда'" do
      offer = Offer.first
      expect(offer.read_offer_type).to eq "аренда"
    end
  end
end

