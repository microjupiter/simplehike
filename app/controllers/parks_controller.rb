class ParksController < ApplicationController
  def show
    @park = Park.all
  end
end
