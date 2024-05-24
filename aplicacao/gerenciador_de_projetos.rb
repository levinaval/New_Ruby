# Criando um app simples para permitir que os usuários criem novas tarefas e visualizem todas as tarefas existentes.

# Definição da classe Task para representar uma tarefa
class Task
  attr_reader :name, :deadline  # Cria métodos de leitura para os atributos name e deadline

  # Método inicializador, chamado quando um novo objeto Task é criado
  def initialize(name, deadline)
    @name, @deadline = name, deadline  # Atribui os parâmetros passados aos atributos da instância
  end

  # Método para retornar os detalhes da tarefa como uma string formatada
  def to_s
    "#{name} - Prazo: #{deadline}"  # Concatena os detalhes da tarefa em uma string
  end
end

# Definição da classe ProjectManager para gerenciar várias tarefas
class ProjectManager
  def initialize
    @tasks = []  # Inicializa um array vazio para armazenar as tarefas
  end

  # Método para adicionar uma nova tarefa ao projeto
  def add_task(task)
    @tasks << task  # Adiciona a tarefa ao array de tarefas
  end

  # Método para exibir todas as tarefas registradas
  def display_tasks
    puts "Tarefas do Projeto:"  # Imprime o cabeçalho
    @tasks.each_with_index do |task, index|  # Itera sobre cada tarefa no array com índice
      puts "#{index + 1}. #{task}"  # Imprime o índice e os detalhes da tarefa
    end
  end
end

# Cria uma nova instância de ProjectManager
project_manager = ProjectManager.new

# Loop para adicionar tarefas ao projeto
loop do
  puts "Digite o nome da tarefa (ou 'Sair'):"
  name = gets.chomp  # Lê o nome da tarefa do usuário
  break if name.downcase == 'sair'  # Sai do loop se o usuário digitar 'sair'

  puts "Digite o prazo da tarefa:"
  deadline = gets.chomp  # Lê o prazo da tarefa do usuário

  # Cria uma nova instância de Task com os dados fornecidos e adiciona ao gerenciador de tarefas
  task = Task.new(name, deadline)
  project_manager.add_task(task)

  # Exibe todas as tarefas registradas após adicionar a nova tarefa
  project_manager.display_tasks
end
