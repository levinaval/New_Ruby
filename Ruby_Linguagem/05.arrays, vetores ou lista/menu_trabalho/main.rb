require_relative 'lanche'
require_relative 'bebidas'
require_relative 'pedido_lanche'
require_relative 'pedido_bebida'


 puts "Olá! benvindo a lanchonete do Levi"
 puts
 puts "Gostaria de fazer o seu pedido?"
 puts "Sim ou Não"
 puts
 
 decisao = gets.chomp
 puts"_________________________________________"
 
if decisao == "sim"
 puts "Este é o menu."
 puts 
 puts menu_de_lanche_organizada
 puts 
 
 
 elsif decisao == "nao"
  puts "Certo, espero que volte logo. xau!!"
 
 else
  puts "Não é isso que eu quero saber."
 
end
 
menu_de_lanche = []
 
menu_de_lanche << gets.chomp