# frozen_string_literal: true

class Offer < ApplicationRecord
  belongs_to :block
  has_many :prices

  validate :check_offer_type

  def read_offer_type
    %w[rent sale].each do |type|
      return 'аренда' if type == self.offer_type
      return 'продажа' if type == self.offer_type
    end
  end

  private

  def check_offer_type
    return errors.add(:offer_type, "must be either 'rent' or 'sale' ") unless (self.offer_type == 'rent' || self.offer_type == 'sale')
  end
end
