require 'statement'

describe Statement do
  let(:account) { double(:account, transaction_history: []) }
  describe '#transaction' do
    it 'prints statement' do
      transaction_history = [{ date: 0o5 / 12 / 2018, credit: 1000, debit: '', balance: 1000 }]
      statement = Statement.new
      result = [{ date: 0o5 / 12 / 2018, credit: 1000, debit: '', balance: 1000 }]
      expect(statement.view_transactions(transaction_history)).to eq(result)
    end
  end
end
