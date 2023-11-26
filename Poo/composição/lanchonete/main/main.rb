
require_relative 'delivery_choice'
require_relative 'drink_menu'
require_relative 'snack_menu'
require_relative 'customer_request'
require_relative 'order_finished'
require_relative 'order_inclusion'

# Instância responsavel pela opção de entrega e retirada.
delivery_choice = DeliveryChoice.new(@pick_up, @deliver)

# Instância responsavel pela opção menu de lanches.
drinks_menu = DrinksMenu.new("1 - Coca Cola(Lata)", "2 - Fanta Laranja(Lata)", "3 - Fanta Uva(Lata)", "4 - Guaraná Antarctica(Lata)", "5 - Peps(Lata)", "6 - Suco")

# Instância responsavel pelo menu de bebidas.
snack_menu = SnackMenu.new("1 - Sopa", "2 - Cachorro_Quente", "3 - Hambúrquer", "4 - Batata_Frita", "5 - File_Parmegiana", "6 - Pastel",)

# Instância responsavel pela escolha do lanche e da bebida.
customer_request = CustomerRequest.new(@snack_order, @drink_order)

# Instância responsavel finalisaçaõ do pedido.
order_finished = OrderFinished.new(@snack_order, @drink_order, @order_inclusion)

# Instância responsavel inclusão de novo pedido.
order_inclusion = OrderInclusion.new(@new_order1, @new_order2)


puts "Olá! Bem vindo a Lanchonete Delícia."
puts
print "Faça o seu pedido: "
pedido = gets.chomp


def cliente(decisao, s)
 end
 
