result = ''

loop do
  puts result
  puts "Quer que eu descubra a sua idade?"
  puts "S para sim, N para não."
  print "Opção:"

  opcao = gets.chomp

  if opcao == "s"
    puts "Que bom!!! por favor me diga seu nome:"
    first_name = gets.chomp
    puts 
    
    puts "Em que ano estamos?"
    current_year = gets.chomp.to_i
    puts 
    
    puts "Ok... Por favor agora me informe o ano em que você nasceu:"
    year_of_birth = gets.chomp.to_i
    puts 
    
    subt = current_year - year_of_birth 

    result = "Seja muito bem vindo #{first_name}, você que é nascido em #{year_of_birth} tem apenas #{subt} e pode crescer e apender muita coisa ainda!"
   
   elsif opcao == "n"
    puts "Tudo bem... até depois"
    break

   else
    result = "Opção não reconhecida."    
  end
  # Comando de limpar o console.
  system "clear"
end