require 'statement'

describe Statement do
  it 'logs transaction history' do
    statement = Statement.new
    expect(statement.header).to eq(["date || credit || debit || balance"])
  end
end
