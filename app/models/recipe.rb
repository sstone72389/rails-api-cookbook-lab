class Recipe < ApplicationRecord
  # has_many :ingredients_group, class_name: 'Ingredient'
  # has_many :ingredients
  has_many :recipe_ingredients
  has_many :ingredient, through: :recipe_ingredients
  # validates :directions, presence: true
end
