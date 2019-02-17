class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :bclass, :street, :housenumber, :floors
end
