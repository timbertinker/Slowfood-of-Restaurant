require 'data_mapper'

class User
  include DataMapper::Resource

  property :id, Serial, key: true
  property :username, String, length: 128
  property :password, BCryptHash, required: true
  property :admin, Boolean, default: false

  validates_presence_of :password
  validates_presence_of :username
  validates_uniqueness_of :username
  # before :save do
  #   # if (self.username == "") || (self.username == nil) && (self.password == "") || (self.password == nil)
  #   #   raise "No user information entered."
  #   if self.username == "" || self.username == nil
  #     #need to flash here instead
  #     raise "you need to enter a username"
  #   elsif self.password == "" || self.password == nil
  #     "you need to enter a password"
  #   elsif User.first(username: self.username) != nil
  #     raise "Username already exists."
  #   # else
  #     # the user will be saved in the table
  #   end
  # end

  # We don't actually use this method anywhere. Should it be connected to Warden? Or should we just get rid of it?
  def authenticate(attempted_password)
    if self.password == attempted_password
      true
    else
      raise "That username and password combination does not exist"
    end
  end
end
