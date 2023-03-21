print "escolha um mês do ano: "
mes = gets.chomp

case mes

when "janeiro"
  puts "Tem 31 dias, no dia 1 é o ano novo!"
when "fevereiro"
  puts "Tem 28 dias e tem o carnaval de 17 a 22!"
when "março"
  puts "Tem 30 dias, não tem feriado."
when "abril"
  puts "tem 30 dias, no dia 1 é o dia da mentira, dia 7 é a paixão de cristo, dia 9 domingo de pascoa, dia 21 tiradentes."
when "maio"
  puts "tem 31 dias, no dia 1 é dia do trabalho, 14 é dia das mães."
else
  puts "Isso eu não sei!!"
end 