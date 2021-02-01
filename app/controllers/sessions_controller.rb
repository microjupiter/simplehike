class SessionsController < ApplicationController

def new
end 

def create
  @hiker = Hiker.find_by(params[:username])
  if @hiker && @hiker.authenticate(params[:password])
  login_user
end

def destroy
  session.clear
  redirect_to root_path
end



end
