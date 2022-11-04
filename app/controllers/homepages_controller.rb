class HomepagesController < ActionController::Base
  # def index
  #   render html: '<h1>Selamat datang di Apolbox Restful API.</h1>'.html_safe
  # end
  helper_method :req
  helper_method :get_all
  helper_method :get_by_id
  helper_method :create
  helper_method :update
  helper_method :delete

  def req
    ActionDispatch::Request.new 'HTTP_HOST' => ENV['APPLICATION_HOST'] || 'localhost:3000'
  end

  def get_all
    req.url + '/api/v1/users?access_token=token'
  end
  def get_by_id
    req.url + '/api/v1/users/1/?access_token=token'
  end
  def create
    req.url + '/api/v1/users?access_token=token'
  end
  def update
    req.url + '/api/v1/users/1/?access_token=token'
  end
  def delete
    req.url + '/api/v1/users/1?access_token=token'
  end
  

  def index
  end
  
end
