puts "Vamos calcular? (s) para Sim ou (n) para Não."
decisao = gets.chomp 
 if decisao == "s"
  puts
  puts "Escolha entre uma dessas operações:"
  puts "(s) = Soma, (sub) = Subtrção, (m) = Multiplicação, (d) = Divisão"
  puts "______________________"
 elsif decisao == "n"
  puts
  puts "Ok. Good Bye"
 else
  puts
  puts "Não foi isso que eu perguntei."
 end

 escolha = gets.chomp

 if escolha == "s"
  require_relative 'soma'
  s = Soma.new(@x, @y)
  s.calcular
 elsif escolha == "sub"
  require_relative 'subtracao'
  subt = Subtracao.new(@x, @y)
  subt.calcular
 elsif escolha == "m"
  require_relative 'multiplicacao'
  m = Multiplicacao.new(@x, @y)
  m.calcular
 elsif escolha == "d"
  require_relative 'divisao'
  d = Divisao.new(@x, @y)
  d.calcular
 else
  puts "Opção Invalida!"
 end