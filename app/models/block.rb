class Block < ApplicationRecord
  belongs_to :building
  has_many :offers
end
