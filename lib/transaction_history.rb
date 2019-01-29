# This class logs all transaction history
class TransactionHistory
  attr_reader :transaction_history

  def initialize(transaction = Transaction)
    @transaction = transaction
    @transaction_history = []
  end

  # describe 'transaction_history' do
  #   it 'returns transaction log' do
  #     account = Account.new
  #     account.credit(100)
  #     account.debit(40)
  #     expect(account.transaction_history).not_to be_nil
  #   end
  # end

  def log_transaction(deposit:, withdrawal:, balance:)
    transaction = @transaction.new(
      deposit: deposit,
      withdrawal: withdrawal,
      balance: balance
    )
    @transaction_history << transaction.transaction_item
  end
end
