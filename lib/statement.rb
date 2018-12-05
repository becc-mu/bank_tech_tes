require_relative './account'

# Statement class
class Statement
  attr_reader :header, :statement, :date, :credit, :debit, :balance, :transaction_history

  def initialize
    @header = 'date || credit || debit || balance'
    @statement = statement
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
    @transaction_history = []
  end

  def view_transactions(transaction_history)
    puts 'date || credit || debit || balance'
    transaction_history.each do |key|
      puts
      key.each do |_key, value|
        print "#{value} || "  \
      end
      \
    end
  end
end
