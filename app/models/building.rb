class Building < ApplicationRecord
  has_many :blocks, dependent: :destroy
end