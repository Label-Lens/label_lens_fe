class UsersController < ApplicationController
  def new
  end

  def create
    user = UserFacade.get_or_create_user(user_params)
  end

  private 

  def user_params 
    params.permit(:email, :authenticity_token, :commit)
  end 
end