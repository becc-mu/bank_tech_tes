require 'account'
require 'statement'
describe Account do
  # let(:account) { double :balance, :transaction_history }
  # let(:transaction_history) { transaction = [] }
  let(:date) { Time.now.strftime('%d/%m/%Y') }

  it 'client opens an Account and deposits funds' do
    account = Account.new
    expect { account.credit(100) }.to change { account.balance }.by(100)
  end
  it 'client prints statement' do
    account = Account.new
    account.credit(100)
    account.credit(200)
    account.debit(40)
    expect(account.balance).to eq 260
    expect(account.print_statement).to eq("date || credit || debit || balance\n#{date} ||  || 40.00 || 260.00\n#{date} || 200.00 ||  || 300.00\n#{date} || 100.00 ||  || 100.00")
  end
end
