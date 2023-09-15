class SessionsController < ApplicationController
  def new
  end

  def create 
    user = UserFacade.get_user(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to spotify_oa_path
    else
      flash[:error] = "Your email or password was incorrect."
      redirect_to login_path
    end
  end

end