class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user
  def current_user
    @current_user
  end

  
  private
  def authenticate_user
    if user = authenticate_with_http_basic {|user, password| User.authenticate(user, password)}
      @current_user = user
    else
      request_http_basic_authentication
    end
  end
  
end #end of class
