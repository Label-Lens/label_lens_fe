class SessionsController < ApplicationController
  def new
  end

  def create 
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to spotify_oa_path
    else
      redirect_to login_path
      flash[:error] = "Your email or password was incorrect."
    end
  end
end