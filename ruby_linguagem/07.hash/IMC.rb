puts "Informe o seu peso."
meu_peso = gets.chomp.to_f

puts "Informe sua altura"
minha_altura = gets.chomp 

minha_altura.gsub! ",","."

minha_altura = minha_altura.to_f

imc = meu_peso / (minha_altura * minha_altura)

puts "Seu IMC é: #{imc}"    