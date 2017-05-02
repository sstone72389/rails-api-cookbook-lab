class Ingredient < ApplicationRecord
  # belongs_to :recipe_group, class_name: 'Recipe', foreiegn_key: 'recipe_id'
  # belongs_to :recipe
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  # validates :name, presence: true
  # validates :amt, presence: true
end
