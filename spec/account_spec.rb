require 'account'

describe Account do
  let(:statement) { double :statement }
  let(:transaction_history) { double :transaction_history }
  subject(:account) { described_class.new }
  date = Time.now.strftime('%d/%m/%Y')


  describe '#create an account' do
    it 'starts with 0 balance' do
      expect(account.balance).to eq(0)
    end
    it '#deposites allows client to credit(amount, date) to account' do
      account.credit(100, date)
      expect(account.balance).to eq 100
    end

    it 'to raise error when insufficient funds' do
      allow(transaction_history).to receive(:debit)
      expect { account.debit(10000) }.to raise_error'Insufficient funds'
    end

    it '#withdraw funds from account' do
      account.credit(100, date)
      account.debit(40)
      expect(account.balance).to eq 60
    end
  end

  describe '#transaction logs' do
    it 'prints statement' do
      transaction_history = spy('transaction_history')
      allow(statement).to receive(:transaction_history)
      account.credit(50)
      account.debit(10)
      expect(subject).to respond_to(:print_statement)

    end
  end
end
