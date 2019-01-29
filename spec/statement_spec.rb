require 'statement'

describe Statement do
  it 'returns a statement with transaction' do
    transaction_history = [{ date: '05/12/2018', credit: 1000, debit: nil, balance: 1000 }]
    statement = Statement.new
    expect(statement.print_statement(transaction_history)).to eq "date || credit || debit || balance\n05/12/2018 || 1000.00 ||  || 1000.00"
  end

  it 'returns statement with transactions' do
    transaction_history = [{ date: '05/12/2018', credit: 100, debit: nil, balance: 100 }, { date: '06/12/2018', credit: 200, debit: nil, balance: 300 }, { date: '07/12/2018', credit: nil, debit: 50, balance: 250 }]
    statement = Statement.new
    expect(statement.print_statement(transaction_history)).to eq "date || credit || debit || balance\n07/12/2018 ||  || 50.00 || 250.00\n06/12/2018 || 200.00 ||  || 300.00\n05/12/2018 || 100.00 ||  || 100.00"
  end
end
