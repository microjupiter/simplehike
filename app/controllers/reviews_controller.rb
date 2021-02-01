class ReviewsController < ApplicationController

def new
  @review = Review.new
end

def create
  render plain: params[:review].inspect
  # @review = Review.new(review_params)
  # if @review.save
  #   flash[:notice] = "Your review was successfully posted"
  #   redirect_to review_path(@review)
  # else 
  #   render 'new'
  # end
end

def show
  @review = Review.find(params[:id])
end


private

def review_params
  params.require(:review).permit(:rating, :difficulty, :content)
end


end
