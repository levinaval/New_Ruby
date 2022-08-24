print "Digite seu peso:"
my_weight = gets.chomp.to_f

print "Digite sua altura"
my_height = gets.chomp

def imc(my_weight, my_height)

  my_height.gsub! ",", "."
  my_height = my_height.to_f

  imc = my_weight / (my_height * my_height)

  puts "O seu IMC é #{imc}"
  
end

imc(my_weight, my_height)