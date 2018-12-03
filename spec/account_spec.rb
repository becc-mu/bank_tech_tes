require 'account'

describe Account do
  it 'starts with 0 balance' do
    account = Account.new
    expect(account.balance).to eq(0)
  end
  it 'allows client to add(amount) to account' do
    account = Account.new
    account.add(100)
    expect(account.balance).to eq 100
  end

  it 'allows client to withdraw(amount) from account' do
    account = Account.new
    account.withdraw(40)
    expect(account.balance).to eq 60
  end
end
