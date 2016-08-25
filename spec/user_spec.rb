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

    xit 'should have a password' do

    end

  end

  describe "Registering sad path" do
    before do
      @user = User.new()
      @user.save
    end

    xit 'should throw an error if there is no username entered' do

    end

    xit 'should throw an error if there is no password entered' do

    end

  end
end
