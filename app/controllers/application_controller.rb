# require './config/enviorment'

class ApplicationController < ActionController::Base

  # helper_method :user_signed_in?, :current_user

  # def user_signed_in?
  #   !!session[:user_id]
  # end

  # def current_user
  #   User.find_by_id(session[:user_id]) if user_signed_in?
  # end

  # def login_user
  #   session[:user_id] = @user.id
  # end

  # # configure do 
  # #   enable :sessions
  # #   set :public_folder, 'public'
  # #   set :views, 'app/views'
  # #   set :session_secret, "hotdog"
  # #   end
end

# class ApplicationController < ActionController::Base
#   # helper_method :logged_in?, :current_user
#   # before_action :authenticate_user!

#   # def current_user
#   #   if session[:user_id]
#   #     @current_user = User.find(session[:user_id])
#   #   end
#   # end

#   # def logged_in?
#   #   !!current_user
#   # end

# end