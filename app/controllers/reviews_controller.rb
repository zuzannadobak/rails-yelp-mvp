class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)
    @restaurant = Restaurant.find(params[:id_restaurants])
    @review.restaurant = @restaurant
    @review.save

    redirect_to restaurant_path(@restaurant)
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
