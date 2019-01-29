require_relative './transaction.rb'

# This calss is responsible for printing statment
class Statement
  def print(transaction_history)
    ['date || credit || debit || balance'] +
      transaction_history.reverse.map do |transactions|
        [
          transactions[:date],
          print_float(transactions[:credit]),
          print_float(transactions[:debit]),
          print_float(transactions[:balance])
        ].join(' || ')
      end
      \
  end

  def print_statement(transaction_history)
    print(transaction_history).join("\n")
  end

  def print_float(value)
    format('%.2f', value) unless value.nil?
  end
end
