class UserService 
  def self.conn(endpoint_url) 
    Faraday.new(url: "http://localhost:3000/api/v1/#{endpoint_url}")
  end

  def self.get_or_create_user_request(user_params)
    response = conn('users').get do |faraday| 
      faraday.params['email'] = user_params[:email]
    end
    require 'pry'; binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_user_request(email)
    response = conn("find_user").get do |faraday|
      faraday.params['email'] = email
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end