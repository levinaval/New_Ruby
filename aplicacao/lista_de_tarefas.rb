# Vamos criar um app simples para gerenciar tarefas.

# Definição da classe TodoList para gerenciar uma lista de tarefas
class TodoList
  
  # Método inicializador, chamado quando uma nova instância de TodoList é criada
  def initialize
    @tasks = []  # Inicializa um array vazio para armazenar as tarefas
  end

  # Método para adicionar uma nova tarefa à lista
  def add_task(task)
    @tasks << task  # Adiciona a tarefa ao array de tarefas
  end

  # Método para exibir todas as tarefas registradas
  def display_tasks
    puts "Lista de tarefas:"  # Imprime o cabeçalho
    @tasks.each_with_index do |task, index|  # Itera sobre cada tarefa no array com índice
      puts "#{index + 1}. #{task}"  # Imprime o índice e os detalhes da tarefa
    end
  end
end

# Cria uma nova instância de TodoList
todo_list = TodoList.new

# Loop para adicionar tarefas à lista
loop do
  puts "Digite uma tarefa (ou 'sair' para sair): "
  input = gets.chomp  # Lê a entrada do usuário
  break if input.downcase == "sair"  # Sai do loop se o usuário digitar 'sair'

  # Adiciona a nova tarefa e exibe a lista atualizada
  todo_list.add_task(input)
  todo_list.display_tasks
end
