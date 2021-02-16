class ReviewsController < ApplicationController
include ReviewHelper

def new
  @review = Review.new
  find_trail_by_id(:trail_id)
end

def create
  @review = Review.new(review_params)
  @user = current_user
  user_reviewed(@user)
  @trail = @review.trail_id
  if @review.save
    flash[:notice] = "Your review was successfully posted"
    redirect_to review_path(@review)
  else 
    flash[:notice] = "Review could not be created. Please check the errors."
    render 'new'
  end
end

def show
  @review = Review.find(params[:id])
  @user_reviewed = User.find_by(params[:id])
  @trail = @review.trail_id
end

def index
  find_trail_by_id(:trail_id)
  # @trail = Trail.find(params[:trail_id])
  @reviews = Review.where(:trail_id == @trail)
  @user_reviewed = User.find_by(params[:id])
end

private

def review_params
  params.require(:review).permit(
    :content, 
    :trail_id,
    :user_id
  )
end
end
