require 'data_mapper'

class User
  include DataMapper::Resource

  property :id, Serial, key: true
  property :username, String, length: 128
  property :password, BCryptHash
  property :admin, Boolean, default: false

  before :save do
    case
    # when self.nil?
    #   raise "Something has gone terribly wrong."
    when (self.username).nil?
      raise "you need to enter a username"
    when (self.password).nil?
      raise "you need to enter a password"
      # redirect session[:return_to]
    else
    end
  end

  # case
  # when (self.username).nil?
  #   raise "you need to enter a username"
    # redirect session[:return_to]
  # when params['user']['password'] == ""
  #   flash[:error] = "you need to enter a password"
  #   redirect session[:return_to]
  # else
    # @user = User.new
    # @user.username = params['user']['username']
    # @user.password = params['user']['password']
    # @user.save
    # env['warden'].authenticate!
    # flash[:success] = "Welcome to our restaurant, #{@user.username}!"
    # redirect '/'
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
