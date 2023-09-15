class SessionsController < ApplicationController
  def new
  end

  def create 
    user = UserFacade.get_user(params[:email])
    # require 'pry'; binding.pry
    if user 
      session[:user_id] = user.id
      redirect_to spotify_oa_path
    else
      flash[:error] = "Your email or password was incorrect."
      redirect_to login_path
    end
  end

end