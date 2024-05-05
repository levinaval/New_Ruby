def even_or_odd(number)
  if number % 2 == 0
    puts "#{number} é par."
  else
    puts "#{number} é impar."
  end
end

puts "Digite em número:"
number = gets.chomp.to_i
even_or_odd(number)