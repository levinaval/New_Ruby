def juros_compostos(principal, taxa, meses)
  juros = principal * taxa * meses
  montante = principal * (1 + (taxa * meses))

  # exibe o resultado
  puts "O total de juros a ser pago é: " +
  juros.to_s
  puts "O montante a ser pago é: " +
  montante.to_s

end

juros_compostos(2000.0, 0.08, 2)

#principal = 2000.0
#taxa = 0.08 # taxa de 8%
#meses = 2

#or

puts "Descubra o valor que a sua reserva pode render."
print "Coloque o valor que você vai quardar por mês:"
valor_por_mes = gets.chomp.to_f

print "Informe por quanto tempo(Em mêses), você pretende quardar:"
tempo = gets.chomp.to_f

def juros_compostos(valor_por_mes, taxa, tempo)
juros = valor_por_mes * taxa * tempo
montante = valor_por_mes * (1 + (taxa * tempo))

puts "O valor dos juros é: #{juros}, O valor do montante é: #{montante}"

end

juros_compostos(valor_por_mes, 0.05, tempo)