class Transaction
  attr_reader :description, :amount
  def initialize(description, amount)
    @description, @amount = description, amount
  end

  def to_s
    "#{@description}: #{@amount}"
  end
end

class FinancialManager
  def initialize
    @Transaction = []
  end

  def add_transactions(transaction)
    @transaction << transaction
  end

  def display_transaction
    puts "Transações Financeiras:"
    @transaction.each_with_index do |transaction, index|
      puts "#{index + 1}. #{transaction}"
    end
  end
end



