class Account

attr_reader :balance

  def initialize
    @balance = 0
  end

  def add(amount)
    @balance += amount
  end

  def withdraw(amount)
  end 
end
