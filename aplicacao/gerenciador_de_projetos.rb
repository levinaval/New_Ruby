# Criando app simple para  permitir que os usuários criem novas tarefas e visualizem todas as tarefas existentes.

class Task
  attr_reader :name, :deadline

  def initialize(name, deadline)
    @name, @deadline = name, deadline
  end

  def to_s
    "#{name} - Prazo: #{deadline}"
  end
end

class ProjectManager
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def display_tasks
    puts "Tarefas do Projeto:"
    @tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

project_manager = ProjectManager.new

loop do
  puts "Digite o nome da tarefa(ou 'Sair')"
  name = gets.chomp
  break if name.downcase == 'sair'

  puts "Digite o prazo da tarefa:"
  deadline = gets.chomp

  task = Task.new(name, deadline)
  project_manager.add_task(task)
  project_manager.display_tasks
end