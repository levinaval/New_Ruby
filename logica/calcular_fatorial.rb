def fatorial(number)
  if number == 0 || number == 1
    return 1
  else
    return number * fatorial(number - 1)
  end
end

print "Digite um número para calcular o fatorial: "
number = gets.chomp.to_i
resultado = fatorial(number)
puts "O fatorial de #{number} é #{resultado}"