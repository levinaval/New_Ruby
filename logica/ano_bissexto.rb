def leap_year(year)
  if(year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    puts ""
    puts "#{year} é um ano bissexto!"  
  else
    puts ""
    puts "#{year} não é um ano bissexto!"    
  end
end

loop do
  print "Digite um ano qualquer: "
  year = gets.chomp
  break if year.downcase == 'sair'
  year = year.to_i
  leap_year(year)
end