class User < ActiveRecord::Base

  has_secure_password# bcrypt command/method

  def self.authenticate(username, password)
    user = User.where(username: username).first
    user && user.authenticate(password)
  end

end #end of class User

