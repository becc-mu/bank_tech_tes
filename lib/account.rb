# Account class
class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def credit(amount, date = time)
    @balance += amount
    @transaction_history << {
      date: date,
      credit: amount,
      debit: '',
      balance: @balance
    }
  end

  def debit(amount, date = time)
    raise 'Insufficient funds' if amount > @balance

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

  def time
    Time.now.strftime('%d/%m/%Y')
  end
end
