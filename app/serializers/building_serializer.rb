class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :bClass, :street, :house_number, :floors
end
