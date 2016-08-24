require './lib/models/model'

describe User do
  #subject { described_class.new(password: '123') }

# before do
#   test = subject.authenticate("123")
# end
  before do
    @user = User.create(username: "user")
    @user.password = "123"
    @user.save
  end

  it 'returns true when the correct password is entered' do
    expect(@user.password).to eq "123"
  end
end
