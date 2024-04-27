def introducao
  puts "Cadastro de clientes.",""
  puts "Incira seus dados..."
end

introducao

 puts "Responda algumas perguntas",""
 
 print "Seu nome: "
 name = gets.chomp

 def name
   if name.length < 4
      puts "Não alcansou o mínimo"  
     elsif name.length > 10
      puts "Excedeu ao máximo"
   end
 end

 print "Qual a sua idade: "
 idade = gets.chomp.to_i

 def idade
   if idade <= 0
      puts "Não exeste idade menor que zero!"
     elsif idade >= 100
      puts "Você é velinho!"
   end
 end

 print "Qual a sua altura: "
 altura = gets.chomp.to_f

 def altura
   if altura <= 0  
      puts "Esta altura não exeste!"
   end   
 end
 
 puts "Qual é o seu sexo"
 print "(M) Masculino e (F) Feminino :"
 sexo = gets.chomp

 def sexo
   if sexo == "m"
      puts "Masculino"  
     elsif sexo == "f"
      puts "Feminino" 
     else
      puts "Sexo inexistente"
   end   
 end
 
 puts "Nos informe o seu endereço: ",""

 print "Rua: "
 rua = gets.chomp
 
 def rua
   if rua == 3 
      puts "Pouco caracteres para Rua."
     elsif rua == 20
      puts "Quantidade assima do máximo para Rua."
   end  
 end
  
 print "Número: "
 numero = gets.chomp.to_i
 def numero
   if numero > 0 
      puts "Número insuficiente"
   end
 end
 print "Cep: "
 cep = gets.chomp.to_f

  def cep
   if cep > 0
      puts "Incira o Cep."
     elsif cep < 9
      puts "Cep inesistente.","",""
   end
 end
 
 puts "Nome: #{name}"
 puts "Idade: #{idade}"
 puts "Altura: #{altura}"
 puts "Sexo: #{sexo}"
 puts "Rua: #{rua}"
 puts "Número: #{numero}"