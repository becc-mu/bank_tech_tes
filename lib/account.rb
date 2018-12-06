# Account class
class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def credit(amount, date = time)
    check_amount(amount)
    @balance += amount
    @transaction_history << {
      date: date,
      credit: amount,
      debit: '',
      balance: @balance
    }
  end

  def debit(amount, date = time)
    check_amount(amount)
    check_balance(amount)
    @balance -= amount
    @transaction_history << {
      date: date,
      credit: '',
      debit: amount,
      balance: @balance
    }
  end

  def print_statement(statement = Statement.new)
    statement.view_transactions(@transaction_history)
  end

  private

  def check_amount(amount)
    raise 'You must enter a number!' unless amount.is_a? Numeric
  end

  def check_balance(amount)
    raise 'Insufficient funds' if amount > @balance
  end

  def time
    Time.now.strftime('%d/%m/%Y')
  end
end
