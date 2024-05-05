def calculate_average(n1, n2, n3)
  media = (n1 + n2 + n3) / 3.0
  puts "A média dos números é : #{media}"
end

loop do
  puts "Digite três números(ou 'Sair'):"
  print "Primeiro: "
  n1 = gets.chomp
  break if n1.downcase == "sair"
  n1 = n1.to_f
  print "Segundo: "
  n2 = gets.chomp.to_f
  print "terceiro: "
  n3 = gets.chomp.to_f
  
  calculate_average(n1, n2, n3)  
end