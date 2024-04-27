def fatorial(numero)
  if numero == 0
    return 1
  else
    resultado = 1
    (1..numero).each do |i|
      resultado *= i
    end
    return resultado
  end
end

# Solicite um número ao usuário
print "Digite um número inteiro para calcular o fatorial: "
numero = gets.chomp.to_i

# Chame a função e exiba o resultado
resultado = fatorial(numero)
puts "O fatorial de #{numero} é #{resultado}."
