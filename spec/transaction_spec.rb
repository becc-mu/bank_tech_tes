require 'transaction'

describe Transaction do
  let(:date) { double :date }
  it 'returns transaction items' do
    allow(Time).to receive_message_chain(:now, :strftime).and_return(date)
    transaction = Transaction.new(deposit: 100, withdrawal: nil, balance: 100)
    expect(transaction.transaction_item).to eq(balance: 100, credit: 100, debit: nil, date: date)
  end
end
