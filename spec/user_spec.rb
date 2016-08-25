require './lib/models/model'

describe User do

  before do
    @user = User.new(username: "user", password: "123")
    @user.save
  end

  it 'returns true when the correct password is entered' do
    expect(@user.authenticate("123")).to eq true
  end

  it 'throws an error when the wrong password is entered' do
    expect{@user.authenticate("monekys")}.to raise_error("That username and password combination does not exist")
  end

  it 'user should have a username' do
    expect(@user.username).to eq "user"
  end

  it 'has a default value of "false" for "admin"' do
    expect(@user.admin).to be false
  end
end
