require 'data_mapper'

class User
  include DataMapper::Resource

  property :id, Serial, key: true
  property :username, String, length: 128
  property :password, BCryptHash
  property :admin, Boolean, default: false

  before :save do
    # This is where I had the case statement that is just not how you use a case statement. Made it this if statement here and the tests run green.
    if self.username.nil? && self.password.nil?
      raise "No user information entered."
    elsif self.username.nil?
      raise "you need to enter a username"
    elsif self.password.nil?
      raise "you need to enter a password"
    elsif User.first(username: self.username) != nil
      raise "Username already exists."
    # else
      # the user will be saved in the table
    end
  end

  # We don't actually use this method anywhere. Should it be connected to Warden? Or should we just get rid of it?
  def authenticate(attempted_password)
    if self.password == attempted_password
      true
    else
      raise "That username and password combination does not exist"
    end
  end
end
