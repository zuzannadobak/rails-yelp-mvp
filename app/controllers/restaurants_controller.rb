class RestaurantsController < ApplicationController
# GET "restaurants"
  def index
    @restaurants = Restaurant.all

  end
  # GET "restaurants/new"
  # POST "restaurants"
  # GET "restaurants/38"

  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address, :phone_number)
  end
end
