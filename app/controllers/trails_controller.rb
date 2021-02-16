class TrailsController < ApplicationController

def show
  @trail = Trail.find_by_id(params[:id])
  @reviews = Review.where(:trail_id == @trail.id)
  user_reviewed(@user)
end

def index
  @trail = Trail.all
end 

end
