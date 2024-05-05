def mdc(a, b)
  while b != 0
    a, b = b, a % b
  end
  return a  
end

loop do
  print "Digite dois números para calcular p MDC:(ou 'Sair') "
  number1 = gets.chomp
  break if number1.downcase == 'sair'
  number1 = number1.to_i
  number2 = gets.chomp.to_i
  resultado = mdc(number1, number2)
  puts "O MDC de #{number1} e #{number2} é: #{resultado}"
end 