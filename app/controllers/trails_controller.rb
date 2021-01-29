class TrailsController < ApplicationController

def show
  @trail = Trail.all
end

def index
  @trail = Trail.all
end 

end
