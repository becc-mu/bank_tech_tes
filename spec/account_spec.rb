require 'account'

describe Account do
  let(:statement) { double :statement }

  it 'starts with 0 balance' do
    account = Account.new
    expect(account.balance).to eq(0)
  end
  it 'allows client to credit(amount) to account' do
    account = Account.new
    account.credit(100)
    expect(account.balance).to eq 100
  end

  it 'allows client to debit(amount) from account' do
    account = Account.new
    account.credit(100)
    account.debit(40)
    expect(account.balance).to eq 60
  end
end
