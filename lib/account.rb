# This calss is responsible for handling deposits, withdrawals, and balance
class Account
  attr_reader :balance, :transaction_history

  def initialize(transaction_history = TransactionHistory.new)
    @balance = 0
    @transaction_history = transaction_history
    @transactions = []
  end

  def credit(deposit)
    raise 'You must enter a number!' unless deposit.is_a? Numeric

    @balance += deposit
    @transactions = transaction_history.log_transaction(
      deposit: deposit,
      withdrawal: nil,
      balance: @balance
    )
  end

  def debit(withdrawal)
    raise 'Insufficient funds!' if withdrawal > @balance

    @balance -= withdrawal
    @transactions = transaction_history.log_transaction(
      deposit: nil,
      withdrawal: withdrawal,
      balance: @balance
    )
  end

  def print_statement(statement = Statement.new)
    statement.print_statement(@transactions)
  end
end
