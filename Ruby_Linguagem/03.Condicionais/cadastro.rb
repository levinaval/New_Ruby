puts "Cadastro de Clientes", ""
print "Se deseja fazer seu cadastro agora digite: 1 se não digite: 2 = ",""

decisao = gets.chomp.to_i

case decisao

 when 1
  puts "Ok! vamos lá",""
 when 2
  puts "Deixar para uma próxima vez!", ""
 else
  puts "Esta opção não existe!"
  
 end

 puts "Responda algumas perguntas",""
 
 print "Seu nome: "
 nome = gets.chomp

 if nome.length < 4
    puts "Não alcansou o mínimo"  
   elsif nome.length > 10
    puts "Excedeu ao máximo"
 end

 print "Qual a sua idade: "
 idade = gets.chomp.to_i

 if idade <= 0
    puts "Não exeste idade menor que zero!"
   elsif idade >= 100
    puts "Você é velinho!"
 end

 print "Qual a sua altura: "
 altura = gets.chomp.to_f

 if altura <= 0  
  puts "Esta altura não exeste!"
 end

 puts "Qual é o seu sexo"
 print "(M) Masculino e (F) Feminino :"
 sexo = gets.chomp

 if sexo == "m"
    puts "Masculino"  
   elsif == "f"
    puts "Feminino" 
   else
    puts "Sexo inexistente"
 end

 puts "Qual o seu endereço: ",""
 endereco = gets.chomp

if endereco <= 3 
   puts "Pouco caracteres."
elsif >= 20
   puts "Quantidade assima do máximo."
end 

 puts "Nome: #{nome}"
 puts "Idade: #{idade}"
 puts "Altura: #{altura}"
 puts "Sexo: #{sexo}"