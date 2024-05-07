#Vamos criar um app simples para fazer pedidos.

# Definição da classe Cafeteria, responsável por gerenciar os pedidos de lanches e de bebidas.
class Cafeteria
# Constante contendo o menu de lanches e seus preços.
  SNACKS_MENU = {
    "Sopa" => 5.0,
    "Cachorro Quente" => 7.5,
    "Hambúrguer" => 10.0,
    "Batata Frita" => 8.0,
    "Filé à Parmegiana" => 15.0,
    "Pastel" => 6.0
  }.freeze

  # Constante contendo o menu de bebidas e seus preços.
  DRINKS_MENU = {
    "Suco" => 4.0,
    "Refrigerante" => 3.5,
    "Água de Coco" => 3.0,
    "Caldo de Cana" => 4.5
  }.freeze

  # Método de inicialização de classe.
  def initialize
    @order_snacks = [] #Array para armazenar os lanches do pedido.
    @order_drinks = [] #Array para armazenar as bebidas do pedido.
  end

  #Método para exibir o menu de lanches.
  def shows_snack_menu
    puts "### MENU DE LANCHES ###"
    SNACKS_MENU.each_with_index do |(item, prece), index|
      puts "#{index + 1}. #{item}: R$ #{prece}"
    end
  end

  # Método para exibir o menu de bebidas.
  def shows_drinks_menu
    puts "### MENU DE BEBIDAS ###"
    DRINKS_MENU.each_with_index do |(item, prece), index|
      puts "#{index + 1}. #{item}: R$ #{prece}"
    end
  end

  # Método para adicionar um lanche ao pedido.
  def shows_snack_order(number)
    item = SNACKS_MENU.keys[number - 1]
    @order_snacks << item if item
  end

  # Método para adicionar uma bebida ao pedido. 
  def order_a_drink(number)
    item = DRINKS_MENU.keys[number - 1]
    @order_drinks << item if item
  end

  # Método para exibir o pedido atual.
  def show_order
    puts "### PEDIDO ###"
    puts "Lanches:"
    @order_snacks.each { |item| puts "#{item}: R$ #{SNACKS_MENU[item]}" }
    puts "Bebidas:"
    @order_drinks.each { |item| puts "#{item}: R$ #{DRINKS_MENU[item]}" }
    total = calculate_total
    puts "Total: R$ #{total}"
  end

  # Método para remover um item do pedido.
  def remove_ordered_item(tipo, indice)
    if tipo == :lanche
      @order_snacks.delete_at(indice)
    elsif tipo == :bebida
      @order_drinks.delete_at(indice)
    end
  end

  private

  # Método para calcular o total do pedido.
  def calculate_total
    total_lanches = @order_snacks.sum { |item| SNACKS_MENU[item] }
    total_bebidas = @order_drinks.sum { |item| DRINKS_MENU[item] }
    total_lanches + total_bebidas
  end
end

# Instaciação da classe Cafeteria.
cafeteria = Cafeteria.new

# Mensagem de boas vindas ao usuário.
puts "Olá! Bem-vindo à Cafeteria Web."

# Loop para interação com o usuário.
loop do
  puts "\nO que gostaria de fazer?"
  puts "1. Ver o menu de lanches"
  puts "2. Ver o menu de bebidas"
  puts "3. Fazer um pedido"
  puts "4. Mostrar o pedido"
  puts "5. Retirar um item do pedido"
  puts "6. Sair"
  print "Escolha uma opção: "
  opcao = gets.chomp.to_i

  # Caso para cada opção escolhida pelo usuário. 
  case opcao
  when 1
    cafeteria.shows_snack_menu
  when 2
    cafeteria.shows_drinks_menu
  when 3
    puts "Digite o número do lanche que deseja pedir: "
    snack_number = gets.chomp.to_i
    cafeteria.shows_snack_order(snack_number)
    puts "Digite o número da bebida que deseja pedir: "
    drink_number = gets.chomp.to_i
    cafeteria.order_a_drink(drink_number)
  when 4
    cafeteria.show_order
  when 5
    puts "\nQual item você deseja retirar do pedido?"
    puts "1. Lanche"
    puts "2. Bebida"
    print "Escolha uma opção: "
    withdrawal_type = gets.chomp.to_i
    if withdrawal_type == 1
      cafeteria.shows_snack_menu
      print "Digite o número do lanche que deseja retirar: "
      item_number = gets.chomp.to_i
      cafeteria.remove_ordered_item(:lanche, item_number - 1)
    elsif withdrawal_type == 2
      cafeteria.shows_drinks_menu
      print "Digite o número da bebida que deseja retirar: "
      item_number = gets.chomp.to_i
      cafeteria.remove_ordered_item(:bebida, item_number - 1)
    else
      puts "Opção inválida. Por favor, escolha uma opção válida."
    end
  when 6
    puts "Obrigado por visitar a Cafeteria Web. Volte sempre!"
    break
  else
    puts "Opção inválida. Por favor, escolha uma opção válida."
  end
end
