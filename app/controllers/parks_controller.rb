class ParksController < ApplicationController
  def show
   @park = Park.find_by_id(params[:id])
   @trail = Trail.find_by(params[:park_id])
  end

  def index
    @parks = Park.all
  end





  # private

  # def park_params
  #   params.require(:park).permit(:name, :location, trails_attributes [:id, :name, :length, :difficulty])
  # end
end
