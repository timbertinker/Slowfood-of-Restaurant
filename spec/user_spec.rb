require './lib/models/model'

describe User do
  
  before do
    @user = User.create(username: "user")
    @user.password = "123"
    @user.save
  end

  it 'returns true when the correct password is entered' do
    expect(@user.authenticate("123")).to eq true
  end
end
