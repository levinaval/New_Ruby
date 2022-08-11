# Escreva um programa que compare se um número é igual a 10.
puts "Dígite um número."

number = gets.chomp.to_i

def comparation(number)
  if number == 10
   puts "Este número que você dígitou é igual a 10!"
  else
    puts "Este número não é igual a 10!"
  end
end

comparation(number)