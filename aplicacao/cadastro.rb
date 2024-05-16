# Vamos criar um app simples para efetuar cadastros.

# Solicita o nome da pessoa.
puts "Cadastro de pessoa física."
print "seu nome nome:"
name = gets.chomp

# Verifica se o nome possui menos de 4 ou mais de 30 caracteres.
information1 = if(name.length < 4 || name.length > 30) then "Quantidade de caracteres abaixo de 4 ou acima de 30." else "#{name}" end

# solicita a didade
print "Idade: "
age = gets.chomp.to_i

# Verifica se a idade, convertendo para inteiro.
information2 = if(age <= 4 || age >= 100) then "Idade igual a 0 ou superior a 100 anos!" else "#{age}" end

# Solicita o endereço da pessoa.
print "Endereço: "
adress = gets.chomp

# Verifica se o endereço possui menos ou mais caracteristicas.
information3 = if(adress.length < 4 || adress.length > 100) then "Quantidade de caracteres abaixo de 4 ou acina de 100" else "#{adress}" end

# Solicita e armazena o número, convertendo-o para inteiro
print "Número: "
number = gets.chomp.to_i

# Verifica se o número possui menos ou mais caracteres.
information4 = if(number <= 4 || number >= 6) then "Quantidade de caracteres abaixo de 4 ou acima de 6" else "#{number}" end

# Imprime as informações do cadastro.
puts " "
puts "#{information1}"
puts "#{information2}"
puts "#{information3}"
puts "#{information4}"