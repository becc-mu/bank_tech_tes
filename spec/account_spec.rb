require 'account'

describe Account do
  it 'starts with 0 balance' do
    account = Account.new
    expect(account.balance).to eq(0)
  end
  it 'allows client to add(amount) to account' do
    account = Account.new
    account.add(100)
    expect(account.balance).to eq 100 #respond_to(:add).with(100).argument
  end

end
