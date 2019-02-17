# frozen_string_literal: true

class Offer < ApplicationRecord
  belongs_to :block
  has_one :price, dependent: :destroy

  validate :check_offertype

  def read_offertype
    %w[rent sale].each do |type|
      return 'аренда' if type == self.offertype
      return 'продажа' if type == self.offertype
    end
  end

  private

  def check_offertype
    return errors.add(:offertype, "must be either 'rent' or 'sale' ") unless (self.offertype == 'rent' || self.offertype == 'sale')
  end
end
