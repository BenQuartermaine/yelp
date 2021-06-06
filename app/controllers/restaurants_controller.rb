class RestaurantsController < ApplicationController
  # before_action :find_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def create
    # create object
    @restaurant = Restaurant.new(restaurant_params)
    # save it to the database
    @restaurant.save

    redirect_to restaurants_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

end
