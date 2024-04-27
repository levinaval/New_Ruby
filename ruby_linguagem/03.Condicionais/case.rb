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
  puts "tem 31 dias, no dia 1 é o dia do trabalho, 14 é dia das mães."
when "junho"
  puts "tem 30 dias, no dia 7 é o dia nacional da liberdade, dia 8 corpus christi e 12 dia dos namorados."
when "julho"
  puts "tem 31 dias, no dia 25 é o dia da mulher negra."
when "agosto"
  puts "tem 31 dias, no dia 13 é o dia dos pais."
when "setembro"
  puts "tem 30 dias, no dia 7 é o dia da independencia."
when "outubro"
  puts "tem 31 dias, no dia 12 é o dia da nossa senhora aparecida, 15 dia do professor e no dia 28 é o dia do servidor público."
when "novenbro"
  puts "tem 30 dias, dia 2 finados, 15 proclamação da república e dia 20  dia da consciencia negra."
when "dezembro"
  puts "tem 31 dias, dia 24 é verpera de natal, 25 é natal e dia 31 é verpera de ano novo."
else
  puts "Isso eu não sei!!"
end 