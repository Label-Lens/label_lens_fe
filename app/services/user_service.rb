class UserService 
  def self.conn(endpoint_url) 
    Faraday.new(url: "http://localhost:3000/api/v1/#{endpoint_url}")
  end

  def self.create_user_request(user_params)
    response = conn('users').post do |faraday| 
      faraday.params['email'] = user_params[:email]
      faraday.params['password'] = user_params[:password]
      faraday.params['password_confirmation'] = user_params[:password_confirmation]
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end