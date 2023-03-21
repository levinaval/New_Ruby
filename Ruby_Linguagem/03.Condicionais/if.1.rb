print "Qual é a marca do seu carro? "
carro = gets.chomp

#if carro == "versa"
#puts "O #{carro} é o melhor"
 #elsif carro != "versa"
 #puts "O #{carro} é razoável..."
#end


marca =
if carro == "versa" then "È o melhor!" elsif carro != "versa" then "É razoável..." end

puts "O seu carro é um #{carro}, #{marca}!"