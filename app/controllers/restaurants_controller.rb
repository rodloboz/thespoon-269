class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    @category = params[:food_type]

    if @category.present?
      @restaurants = find_restaurants
    else
      @restaurants = RESTAURANTS
    end
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

  private

  def find_restaurants
    RESTAURANTS.select do |id, restaurant|
      restaurant[:category] = @category
    end
  end
end
