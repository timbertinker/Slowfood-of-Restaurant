require 'data_mapper'

class User
  include DataMapper::Resource

  property :id, Serial, key: true
  property :username, String, length: 128
  property :password, BCryptHash
  property :admin, Boolean, default: false

  def authenticate(attempted_password)
    if self.password == attempted_password
      true
    else
      raise "That username and password combination does not exist"
    end
  end
end
