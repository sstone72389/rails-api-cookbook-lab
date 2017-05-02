class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :amt, :recipe_ingredients
end
