puts "Digite o nome dos três programadores:"
print "Progamador 1: "
nome1 = gets.chomp

print "Progamador 2: "
nome2 = gets.chomp

print "Progamador 3: "
nome3 = gets.chomp

nomes = [nome1, nome2, nome3]
for nome in nomes
  puts "Olá, #{nome}!"
end
