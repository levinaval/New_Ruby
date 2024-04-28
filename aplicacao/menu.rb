class Lanchonete
  MENU_LANCHES = {
    "Sopa" => 5.0,
    "Cachorro Quente" => 7.5,
    "Hambúrguer" => 10.0,
    "Batata Frita" => 8.0,
    "Filé à Parmegiana" => 15.0,
    "Pastel" => 6.0
  }.freeze

  MENU_BEBIDAS = {
    "Suco" => 4.0,
    "Refrigerante" => 3.5,
    "Água de Coco" => 3.0,
    "Caldo de Cana" => 4.5
  }.freeze

  def initialize
    @pedido_lanches = []
    @pedido_bebidas = []
  end

  def mostrar_menu_lanches
    puts "### MENU DE LANCHES ###"
    MENU_LANCHES.each_with_index do |(item, preco), index|
      puts "#{index + 1}. #{item}: R$ #{preco}"
    end
  end

  def mostrar_menu_bebidas
    puts "### MENU DE BEBIDAS ###"
    MENU_BEBIDAS.each_with_index do |(item, preco), index|
      puts "#{index + 1}. #{item}: R$ #{preco}"
    end
  end

  def fazer_pedido_lanche(numero)
    item = MENU_LANCHES.keys[numero - 1]
    @pedido_lanches << item if item
  end

  def fazer_pedido_bebida(numero)
    item = MENU_BEBIDAS.keys[numero - 1]
    @pedido_bebidas << item if item
  end

  def mostrar_pedido
    puts "### PEDIDO ###"
    puts "Lanches:"
    @pedido_lanches.each { |item| puts "#{item}: R$ #{MENU_LANCHES[item]}" }
    puts "Bebidas:"
    @pedido_bebidas.each { |item| puts "#{item}: R$ #{MENU_BEBIDAS[item]}" }
    total = calcular_total
    puts "Total: R$ #{total}"
  end

  def retirar_item_pedido(tipo, indice)
    if tipo == :lanche
      @pedido_lanches.delete_at(indice)
    elsif tipo == :bebida
      @pedido_bebidas.delete_at(indice)
    end
  end

  private

  def calcular_total
    total_lanches = @pedido_lanches.sum { |item| MENU_LANCHES[item] }
    total_bebidas = @pedido_bebidas.sum { |item| MENU_BEBIDAS[item] }
    total_lanches + total_bebidas
  end
end

lanchonete = Lanchonete.new

puts "Olá! Bem-vindo à Lanchonete Web."

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

  case opcao
  when 1
    lanchonete.mostrar_menu_lanches
  when 2
    lanchonete.mostrar_menu_bebidas
  when 3
    puts "Digite o número do lanche que deseja pedir: "
    numero_lanche = gets.chomp.to_i
    lanchonete.fazer_pedido_lanche(numero_lanche)
    puts "Digite o número da bebida que deseja pedir: "
    numero_bebida = gets.chomp.to_i
    lanchonete.fazer_pedido_bebida(numero_bebida)
  when 4
    lanchonete.mostrar_pedido
  when 5
    puts "\nQual item você deseja retirar do pedido?"
    puts "1. Lanche"
    puts "2. Bebida"
    print "Escolha uma opção: "
    tipo_retirada = gets.chomp.to_i
    if tipo_retirada == 1
      lanchonete.mostrar_menu_lanches
      print "Digite o número do lanche que deseja retirar: "
      numero_item = gets.chomp.to_i
      lanchonete.retirar_item_pedido(:lanche, numero_item - 1)
    elsif tipo_retirada == 2
      lanchonete.mostrar_menu_bebidas
      print "Digite o número da bebida que deseja retirar: "
      numero_item = gets.chomp.to_i
      lanchonete.retirar_item_pedido(:bebida, numero_item - 1)
    else
      puts "Opção inválida. Por favor, escolha uma opção válida."
    end
  when 6
    puts "Obrigado por visitar a Lanchonete Web. Volte sempre!"
    break
  else
    puts "Opção inválida. Por favor, escolha uma opção válida."
  end
end
