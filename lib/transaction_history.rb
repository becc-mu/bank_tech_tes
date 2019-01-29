class TransactionHistory
  attr_reader :transaction_history

  def initialize(transaction = Transaction)
    @transaction = transaction
    @transaction_history = []
  end

  def log_transaction(deposit:, withdrawal:, balance:)
    transaction = @transaction.new(deposit: deposit, withdrawal: withdrawal, balance: balance)
    @transaction_history << transaction.transaction_item
  end
end
