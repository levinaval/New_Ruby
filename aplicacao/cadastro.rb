#Vamos criar um app simples para efetuar cadastros.

puts "Cadastro de pessoa física"
print "Primeiro nome:"
name = gets.chomp

information1 = if(name.length < 4 || name.length > 30) then "Quantidade de caracteres abaixo de 4 ou acina de 30!" else "#{name}" end

print "Idade: "
age = gets.chomp.to_i

information2 = if(age <= 4 || age >= 100) then "Idade igual a 0 ou superior a 100 anos!" else "#{age}" end

print "Endereço: "
adress = gets.chomp

information3 = if(adress.length < 4 || adress.length > 100) then "Quantidade de caracteres abaixo de 4 ou acina de 100" else "#{adress}" end

print "Número: "
number = gets.chomp.to_i

information4 = if(number <= 4 || number >= 6) then "Quantidade de caracteres abaixo de 4 ou acina de 6" else "#{number}" end

puts " "
puts "#{information1}"
puts "#{information2}"
puts "#{information3}"
puts "#{information4}"