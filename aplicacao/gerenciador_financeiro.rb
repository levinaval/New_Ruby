# Vamos criar um app simples para gerenciar transações financeiras.

# Definição da classe Transaction para representar uma transação financeira
class Transaction
  attr_reader :description, :amount  # Cria métodos de leitura para os atributos description e amount

  # Método inicializador, chamado quando um novo objeto Transaction é criado
  def initialize(description, amount)
    @description, @amount = description, amount  # Atribui os parâmetros passados aos atributos da instância
  end

  # Método para retornar os detalhes da transação como uma string formatada
  def to_s
    "#{@description}: #{@amount}"  # Concatena os detalhes da transação em uma string
  end
end

# Definição da classe FinancialManager para gerenciar várias transações
class FinancialManager
  def initialize
    @transactions = []  # Inicializa um array vazio para armazenar as transações
  end

  # Método para adicionar uma nova transação ao registro
  def add_transaction(transaction)
    @transactions << transaction  # Adiciona a transação ao array de transações
  end

  # Método para exibir todas as transações registradas
  def display_transactions
    puts "Transações Financeiras:"  # Imprime o cabeçalho
    @transactions.each_with_index do |transaction, index|  # Itera sobre cada transação no array com índice
      puts "#{index + 1}. #{transaction}"  # Imprime o índice e os detalhes da transação
    end
  end
end

# Cria uma nova instância de FinancialManager
financial_manager = FinancialManager.new

# Loop para adicionar transações ao registro
loop do
  print "Digite uma descrição para a transação (ou 'sair' para sair):"
  description = gets.chomp  # Lê a descrição da transação do usuário
  break if description.downcase == 'sair'  # Sai do loop se o usuário digitar 'sair'
  
  print "Digite o valor da transação:"
  amount = gets.to_f  # Lê o valor da transação do usuário

  # Cria uma nova instância de Transaction com os dados fornecidos e adiciona ao gerenciador de transações
  transaction = Transaction.new(description, amount)
  financial_manager.add_transaction(transaction)

  # Exibe todas as transações registradas após adicionar a nova transação
  financial_manager.display_transactions
end
