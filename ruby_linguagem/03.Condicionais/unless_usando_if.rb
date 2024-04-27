#Inverte a comparasão assim como o unless

loja = "fechada"

if not loja == "aberta"
  loja = "Aberta.. pode entra!"
else
  loja = "Fechada.. não pode entra"
end

puts "A loja esta #{loja}"