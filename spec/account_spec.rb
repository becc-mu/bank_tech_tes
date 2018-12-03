require 'account'

describe Account do
  it 'starts with 0 balance' do
    account = Account.new
    expect(account.balance).to eq(0)
  end
  it 'allows client to add(amount) to account' do
    account = Account.new
    account.add()
    expect(account).to respond_to(:add).with(1).argument
  end

end
