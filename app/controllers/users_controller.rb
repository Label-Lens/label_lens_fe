class UsersController < ApplicationController
  def new
  end

  def create
    user = UserFacade.create_user(user_params)
    
  end

  private 

  def user_params 
    params.permit(:email, :password, :password_confirmation)
  end 
end