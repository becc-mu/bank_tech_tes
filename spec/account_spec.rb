require 'account'

describe Account do
  let(:transaction_history) { double :transaction_history[] }
  date = Time.now.strftime('%d/%m/%Y')
  describe '#deposites' do
    it 'starts with 0 balance' do
      account = Account.new
      expect(account.balance).to eq(0)
    end
    it 'allows client to credit(amount, date) to account' do
      account = Account.new
      account.credit(100, date)
      expect(account.balance).to eq 100

    end

    it 'allows client to debit(amount, date) from account' do
      account = Account.new
      account.credit(100, date)
      account.debit(40)
      expect(account.balance).to eq 60
    end
  end

  describe '#transactions' do
    it 'logs transactions' do
      account = Account.new
      account.credit(1000, date)
      expect(account.transaction_history).to include({:balance=>1000, :credit=>1000, :date=>"05/12/2018", :debit=>""} )
    end

    it 'logs multiple transactions' do
      account = Account.new
      account.credit(1000, date)
      account.credit(2000, date)
      account.debit(500, date)
      expect(account.transaction_history.length).to eq(3)
    end
  end
end
