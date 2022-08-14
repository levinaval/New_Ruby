puts "Vamos calcular? (s) para Sim ou (n) para Não?"
decisao = gets.chomp

if decisao == "s"
puts
puts "Escolha entre uma dessas operações:"
puts "(s) = Soma", "(sub) = Subtração", "(m) = Multiplicação", "(d) = Divisão" 
puts "---------------------"

elsif decisao == "n"
  puts
  puts "Ok. GOOD BYE!"

else
  puts
  puts "Não foi isso que eu perguntei."
end

escolha = gets.chomp

if escolha == "s"
  
  puts "Primeiro número"
  x = gets.chomp.to_i
  puts "O segundo"
  y = gets.chomp.to_i
  soma = x + y
  puts "Resultado:"
  puts soma

end

if escolha == "sub"
  
  puts "Primeiro número"
  x = gets.chomp.to_i
  puts "O segundo"
  y = gets.chomp.to_i
  subt = x - y
  puts "Resultado:"
  puts subt

end

if escolha == "m"
  
  puts "Primeiro número"
  x = gets.chomp.to_i
  puts "O segundo"
  y = gets.chomp.to_i
  mult = x * y
  puts "Resultado:"
  puts mult

end

if escolha == "d"
  
  puts "Primeiro número"
  x = gets.chomp.to_i
  puts "O segundo"
  y = gets.chomp.to_i
  div = x.to_f / y.to_f
  puts "Resultado:"
  puts div

end
