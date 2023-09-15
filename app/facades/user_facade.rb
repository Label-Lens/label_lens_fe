class UserFacade 
  def self.create_user(user_params) 
    user = UserService.create_user_request(user_params)
    User.new(user[:data])
  end
end