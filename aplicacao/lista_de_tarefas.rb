#Vamos criar um app simples para gereciar tarefas.

class TodoList
  
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def display_tasks
    puts "Lista de tarefas:"
    @tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

todo_list = TodoList.new

loop do
  puts "Digite uma tarefa (ou 'sair' para sair): "
  input = gets.chomp
  break if input.downcase == "sair"

  todo_list.add_task(input)
  todo_list.display_tasks
end