puts "Cadastro de pessoa física"
print "Nome: "
n = gets.chomp

n1 =
if(n.length < 4 || n.length > 30) then "Quantidade de caracteres abaixo de 4 ou acina de 30!" else "#{n}" end



print "Idade: "
i = gets.chomp.to_i

n2 =
if(i <= 4 || i >= 100) then "Idade igual a 0 ou superior a 100 anos!" else "#{i}" end



print "Endereço: "
ed = gets.chomp

n3 =
if(ed.length < 4 || ed.length > 100) then "Quantidade de caracteres abaixo de 4 ou acina de 100" else "#{ed}" end



print "Número: "
nu = gets.chomp.to_i

n4 =
if(nu <= 4 || nu >= 6) then "Quantidade de caracteres abaixo de 4 ou acina de 6" else "#{nu}" end

puts "-----------------------------------------"
puts "#{n1}"
puts "#{n2}"
puts "#{n3}"
puts "#{n4}"