class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    current_user
    @reviews = Review.where(user: current_user)
    @reviews = policy_scope(review)
  end

   def show
    @review = Review.find(params[:id])
    authorize @review
  end

  def new
    @journey = Journey.find(params[:journey_id])
    @review = Review.new
    @review.journey = @journey
  end

  def create
    @journey = Journey.find(params[:journey_id])
    @review = Review.new(review_params)
    @review.journey = @journey
    authorize @review
    if @review.save
      redirect_to journey_path(@journey)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:id, :rating, :description, :journey_id)
  end

end
