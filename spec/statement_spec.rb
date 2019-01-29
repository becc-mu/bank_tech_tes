require 'statement'

describe Statement do
  it 'returns a statement with transaction' do
    transaction_history = [{ date: '05/12/2018', credit: 1000, debit: nil, balance: 1000 }]
    statement = Statement.new
    expect(statement.print_statement(transaction_history)).to eq "date || credit || debit || balance\n05/12/2018 || 1000.00 ||  || 1000.00"
  end

  it 'returns statement with transactions' do
    transaction_history = [{ date: '05/12/2018', credit: 1000, debit: nil, balance: 1000 }, { date: '06/12/2018', credit: 2000, debit: nil, balance: 3000 }, { date: '07/12/2018', credit: nil, debit: 500, balance: 2500 }]
    statement = Statement.new
    expect(statement.print_statement(transaction_history)).to eq "date || credit || debit || balance\n07/12/2018 ||  || 500.00 || 2500.00\n06/12/2018 || 2000.00 ||  || 3000.00\n05/12/2018 || 1000.00 ||  || 1000.00"
  end
end
