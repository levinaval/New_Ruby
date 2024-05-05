def even_or_odd(number)
  if number % 2 == 0
    puts ""
    puts "#{number} é Par!"
  else
    puts ""
    puts "#{number} é Impar!"
  end
end

loop do
  print "Digite em número: "
  number = gets.chomp
  break if number.downcase == 'sair'
  even_or_odd(number)
end


