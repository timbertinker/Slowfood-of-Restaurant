require './lib/models/user'

describe User do

  describe "Logging in" do

    before do
      @user = User.new(username: "user", password: "123")
      @user.save
    end

    it 'returns true when the correct password is entered' do
      expect(@user.authenticate("123")).to eq true
    end

    it 'throws an error when the wrong password is entered' do
      expect{@user.authenticate("monkeys")}.to raise_error("That username and password combination does not exist")
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

  # describe "Registering with no inputs at all" do
  #   before do
  #     @user = User.new()
  #   end
  #
  #   it 'throws an error if we do not create a user' do
  #     expect{@user.save}.to raise_error("No user information entered.")
  #   end
  #
  # end

  describe 'Registering with no username' do
    before do
      @user = User.new(password: "jumpingbeans")
    end

    it {is_expected.to validate_presence_of(:username)}
  end

  describe "Registering with no password" do
    before do
      @user = User.new(username: "mitchell")
    end

    it {is_expected.to validate_presence_of(:password)}
  end

  describe 'User tries to register with duplicate username' do
    before do
      @user = User.new(username: "user", password: "123")
      @user.save
      @anotheruser = User.new(username: "user", password: "1234")
    end

    it {is_expected.to validate_uniqueness_of(:username)}


  end
end
