class Account

attr_reader :balance, :statement

  def initialize
    @statment = Statement.new
    @balance = 0

  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    @balance -= amount
  end
end
