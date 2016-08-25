require './lib/models/model'

describe User do

  describe "Logging in" do

    before do
      @user = User.new(username: "user", password: "123")
      @user.save
    end

    it 'returns true when the correct password is entered' do
      expect(@user.authenticate("123")).to eq true
    end

    #this test is a false positive:
    xit 'throws an error when the wrong password is entered' do
      expect{@user.authenticate("monekys")}.to raise_error("That username and password combination does not exist")
      binding.pry
    end

    it 'user should have a username' do
      expect(@user.username).to eq "user"
    end

    it 'has a default value of "false" for "admin"' do
      expect(@user.admin).to be false
    end
  end

  describe "Registering happy path" do
    before do
      @user = User.new(username: "user2", password: "1234")
      @user.save
    end

    it 'should have a username' do
      expect(User.first(username: "user2")[:username]).to eq "user2"
    end

    it 'should have a password' do
      expect(User.first(username: "user2")[:password]).to eq "1234"
    end

  end

  describe "Registering with no username" do
    before do
      @user = User.new()
    end

    # it 'throws an error if we do not create a user' do
    #   expect{@anotheruser.save} to raise_error("Something has gone terribly wrong.")
    # end

    it 'should throw an error if we try to create a user with no username' do
      expect{@user.save}.to raise_error("you need to enter a username")
    end

  end

  describe "Registering with no password" do
    before do
      @user = User.new(username: "mitchell")
    end

    it 'should throw an error if we try to create a user with no password' do
      expect{@user.save}.to raise_error("you need to enter a password")
    end
  end
end
