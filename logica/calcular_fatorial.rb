def factorial(number)
  if number == 0 || number == 1
    return 1
  else
    return number * factorial(number - 1)
  end
end

loop do
  print "Digite um número para calcular o fatorial(ou 'Sair'): "
  number = gets.chomp
  break if number.downcase == 'sair'
  number = number.to_i
  resultado = factorial(number)
  puts "O fatorial de #{number} é #{resultado}"
end