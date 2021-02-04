class ReviewsController < ApplicationController

def new
  @review = Review.new
end

def create
  
  @review = Review.new(review_params)
  @trail = Trail.find(params["review"]["trail_id"])
  
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
end


private

def review_params
  params.require(:review).permit(:rating, :difficulty, :content)
end


end
