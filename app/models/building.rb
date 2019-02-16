class Building < ApplicationRecord
  self.inheritance_column = :_type_disabled
  has_many :blocks
end
