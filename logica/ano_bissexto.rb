def ano_bissexto(ano)
  if(ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)
    puts "#{ano} é um ano bissexto!"  
  else
    puts "#{ano} não é um ano bissexto!"    
  end
end

print "Digite um ano qualquer: "
ano = gets.chomp.to_i
ano_bissexto(ano)