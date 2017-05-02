class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :direction, :recipe_ingredients
end
