# frozen_string_literal: true

class Price < ApplicationRecord
  belongs_to :offer
  validates :value, presence: true, length: { maximum: 8 }

  def get_currency(value)
    table = { 1 => 'рубли', 2 => 'доллары', 3 => 'евро' }
    table[value]
  end
end
