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
    @transactions = []
  end

  def add_transaction(transaction)
    @transactions << transaction
  end

  def display_transactions
    puts "Transações Financeiras:"
    @transactions.each_with_index do |transaction, index|
      puts "#{index + 1}. #{transaction}"
    end
  end
end

financial_manager = FinancialManager.new

loop do
  print "Digite uma descrição para a transação (ou 'sair' para sair):"
  description = gets.chomp
  break if description.downcase == 'sair'
  
  print "Digite o valor da transação:"
  amount = gets.to_f

  transaction = Transaction.new(description, amount)
  financial_manager.add_transaction(transaction)
  financial_manager.display_transactions
end
