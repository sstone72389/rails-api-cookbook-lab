class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :destroy, :update]

  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  def show
    render json: @ingredient
  end

  def update
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def create
    if Ingredient.create(ingredient_params)
      render json: @ingredient, status: :created
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ingredient.destroy
    head :no_content
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :amt)
  end
end
