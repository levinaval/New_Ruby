print "escolha um mês do ano: "
mes = gets.chomp

case mes

when "janeiro"
  puts "Tem 31 dias"
when "fevereiro"
  puts "Tem 28 dias"
when "março"
  puts "Tem 30 dias"
when "abril"
  puts "tem 30 dias"
else
  puts "Isso eu não sei!!"
end 