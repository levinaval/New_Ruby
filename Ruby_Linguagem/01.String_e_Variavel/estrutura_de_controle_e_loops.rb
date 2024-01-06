# Médio
puts "Escreva seu nome:"
nome = gets.chomp

puts "Escreva sua idade:"
idade = gets.chomp.to_i

if idade >= 18
  puts "#{nome}, você é maior de idade."
else
  puts "#{nome}, você é menor de idade."
end

# Loop para contar até 5
for i in 1..5
  puts "Contagem: #{i}"
end
