puts "Cadastro de Clientes"
puts "Se deseja fazer seu cadastro agora digite: 1 se não digite: 2 "

decisao = gets.chomp.to_f

case decisao

 when 1
  puts
  puts "Ok! vamos lá"
 when 2
  puts 
  puts "Deixar para uma próxima vez!" 
 else
  puts "Esta opção não existe!"
 end

 puts "Responda algumas perguntas"
 
 cadastro = []

print "Nome: "

cadastro = gets.chomp

print "Idade: "

cadastro = gets.chomp.to_i

puts cadastro