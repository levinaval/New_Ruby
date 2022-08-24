def carro(modelo = "Versa")

  puts "Este é o modelo de carros temos! #{modelo}!"
  
end

carro

puts
print "Quer trocar?:"
decisao = gets.chomp

if decisao == "sim"

  print "Escolha um outro modelo:"
  modelo = gets.chomp
  carro(modelo)
  
elsif decisao == "nao"
  
  carro

end