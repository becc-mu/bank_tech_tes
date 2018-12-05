# Account class
class Account
  attr_reader :balance, :statement, :transaction_history

  def initialize
    @statment = Statement.new
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
    @balance -= amount
    @transaction_history << {
      date: date,
      credit: '',
      debit: amount,
      balance: @balance
    }
  end
  private

  def time
    Time.now.strftime('%d/%m/%Y')
  end

end
