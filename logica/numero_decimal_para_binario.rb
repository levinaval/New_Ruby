def decimal_para_binario(decimal)
  return decimal.to_s(2)
end

puts "Por favor, insira um número decimal para ser convertido para binário."
decimal = gets.chomp.to_i
binario = decimal_para_binario(decimal)
puts "O número binário equivalente é: #{binario}"