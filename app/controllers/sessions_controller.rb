class SessionsController < ApplicationController
  def new
  end

  def create 
    # require 'pry'; binding.pry
    user = UserFacade.get_user(params[:email])
    if user 
      session[:user_id] = user.id
      # redirect_to spotify_oa_path
    else
      flash[:error] = "Your email or password was incorrect."
      redirect_to login_path
    end
  end

end