class ReviewsController < ApplicationController

def new
  @review = Review.new
  @trail = Trail.find(params[:trail_id])
end

def create
  @review = Review.new(review_params)
  @user = current_user
  @user_reviewed = User.find_by(params[:id])
  
  @trail = Trail.find_by(params[:id])
  @review.trail_id = @trail.id
  

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
end

def index
  @review = Review.all
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
