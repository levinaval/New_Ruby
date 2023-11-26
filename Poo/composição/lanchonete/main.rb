
require_relative 'drinks_menu'
require_relative 'snack_menu'
require_relative 'customer_request'
require_relative 'order_finished'
require_relative 'order_inclusion'
require_relative 'delivery_choice'

# Instância responsavel pela opção de entrega e retirada.
delivery_choice = DeliveryChoice.new(@pick_up, @deliver)
#puts delivery_choice.search
#puts delivery_choice.to_send

# Instância responsavel pela opção menu de lanches.
drinks_menu = DrinksMenu.new("1 - Coca Cola(Lata)", "2 - Fanta Laranja(Lata)", "3 - Fanta Uva(Lata)", "4 - Guaraná Antarctica(Lata)", "5 - Peps(Lata)", "6 - Suco")
#puts drinks_menu.menu1

# Instância responsavel pelo menu de bebidas.
snack_menu = SnackMenu.new("1 - Sopa", "2 - Cachorro_Quente", "3 - Hambúrquer", "4 - Batata_Frita", "5 - File_Parmegiana", "6 - Pastel",)
#puts snack_menu.menu1

# Instância responsavel pela escolha do lanche e da bebida.
customer_request = CustomerRequest.new(@snack_order, @drink_order)
#puts customer_request.show_order_cart

# Instância responsavel finalisaçaõ do pedido.
order_finished = OrderFinished.new(@snack_order, @drink_order, @order_inclusion)
#puts order_finished.last_car

# Instância responsavel inclusão de novo pedido.
order_inclusion = OrderInclusion.new(@new_order1, @new_order2)
#puts order_inclusion.order_cart2


puts "Olá! Bem vindo a Lanchonete Delícia."
puts
print "Faça o seu pedido: 1 - Lanche 2 - Bebida "
escolha = gets.chomp.to_i


def cliente(escolha)
  if escolha == 1
    puts
    puts snack_menu.menu1
    elsif escolha == 2
      puts
      puts drinks_menu.menu1
    else
      puts "Opção não valida!"
 end
end 
