require 'transaction_history'

describe '#TransactionHistory' do
  subject { TransactionHistory.new(transaction) }
  let(:transaction) { spy('transaction') }
  it 'returns empty Transaction history' do
    expect(subject.transaction_history).to be_empty
  end

  it 'returns transaction log' do
    expect(transaction).to receive(:new)
    subject.log_transaction(deposit: 100, withdrawal: nil, balance: 100)
  end
end
