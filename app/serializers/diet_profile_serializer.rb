class DietProfileSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :ingredients
  class IngredientSerializer < ActiveModel::Serializer
    attributes :id, :name
  end
end
