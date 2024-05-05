def reverse(string)
  inverted = ""
  for i in (0..string.length-1)
    inverted = string[i] + inverted
  end
  return inverted
end

loop do
  print "Digite uma palavra(ou 'Sair'): "
  prohibited = gets.chomp
  break if prohibited.downcase == 'sair'
  inverted = reverse(prohibited)
  puts "Palavra invertida: #{inverted}"
end