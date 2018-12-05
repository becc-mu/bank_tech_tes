require 'statement'

describe Statement do
  let(:account) { double(:account, transaction_history: []) }
  describe '#transaction' do
    # it 'prints statement header' do
    #   statement = Statement.new
    #   expect(statement.header).to eq(%(date || credit || debit || balance))
    # end
    it 'prints statement' do
      transaction_history = [{ date: 0o5 / 12 / 2018, credit: 1000, debit: '', balance: 1000 }, { date: '05/12/2018', credit: 2000, debit: '', balance: 3000 }, { date: '06/12/2018', credit: '', debit: 1000, balance: 2000 }]
      statement = Statement.new

      expect(statement.view_transactions(transaction_history)).to eq([{ date: 0o5 / 12 / 2018, credit: 1000, debit: '', balance: 1000 }, { date: '05/12/2018', credit: 2000, debit: '', balance: 3000 }, { date: '06/12/2018', credit: '', debit: 1000, balance: 2000 }])
    end
  end
end
