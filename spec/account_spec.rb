require 'account'

describe Account do
  let(:statement) { double :statement }
  subject(:account) { described_class.new }
  let(:transactions) { double :transactions }
  describe '#create an account' do
    it 'starts with 0 balance' do
      allow(transactions).to receive(:balance).and_return(0)
      expect(account.balance).to eq(0)
    end

    it 'raise error when input is not number' do
      expect { account.credit('abc') }.to raise_error 'You must enter a number!'
    end
    it '#deposites allows client to credit(amount, date) to account' do
      account.credit(100)
      expect(account.balance).to eq 100
    end

    it 'to raise error when insufficient funds' do
      account = Account.new
      account.credit(100)
      expect { account.debit(3000) }.to raise_error 'Insufficient funds!'
    end

    it '#withdraw funds from account' do
      account.credit(100)
      account.debit(40)
      expect(account.balance).to eq 60
    end
  end

  describe 'transaction_history' do
    it 'returns transaction log' do
      account = Account.new
      account.credit(100)
      account.credit(50)
      account.debit(40)
      expect(account.transaction_history).not_to be_nil
    end
  end

  describe 'print_statement' do
    it 'prints statement' do
      account = Account.new
      allow(statement).to receive(:transaction_history)
      expect(subject).to respond_to(:print_statement)
    end

    it 'passes when #print_statement is called and statement receives #print' do
      statement = spy('statement')
      subject = Account.new(statement)
      subject.print_statement
      expect(statement.print).to have_received(:print)
    end
  end
end
