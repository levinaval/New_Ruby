print "Qual é a marca do seu carro? "
carro = gets.chomp

#marca = "deixa para la"

#if carro != "versa"
#  marca = "nissa"
#end
#
#puts "qual é seu carro? #{marca}!"

marca =
if carro == "versa" then "È o melhor!" elsif carro != "versa" then "É rasoavel..." end

puts "O seu carro é um #{carro}, #{marca}!"