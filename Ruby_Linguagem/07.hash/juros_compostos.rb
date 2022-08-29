principal = 2000.0
taxa = 0.08 # taxa de 8%
meses = 2
juros = principal * taxa * meses
montante = principal * (1 + (taxa * meses))

# exibe o resultado
puts "O total de juros a ser pago é: " +
  juros.to_s
puts "O montante a ser pago é: " +
  montante.to_s
  