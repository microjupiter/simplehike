class SessionsController < ApplicationController

def new
end 

def create
  @hiker = Hiker.find_by_username(params[:username])
  if @hiker && @hiker.authenticate(params[:password])
  login_user
  redirect_to parks_path
  else
    flash.now[:error] = ["Username or password didn't match"]
    render :new
end
end

def destroy
  session.clear
  redirect_to root_path
end



end
