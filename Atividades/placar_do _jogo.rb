#Escreva um programa leia dois nomes de times de futebol, a quantidade de gols do primeiro time, a quantidade de gols do segundo time e mostre o nome do time vencedor da partida

print "Informe o nome do primeiro time: ",""
time1 = gets.chomp
print "Informe o quantos gols o primeiro time fez: ",""
placar1 = gets.to_i

print "Informe o nome do segundo time: ",""
time2 = gets.chomp
print "Informe o quantos gols o segundo time fez: ",""
placar2 = gets.to_i

jogo =
if placar1 > placar2
  puts "O #{time1} é o vencedor do jogo por #{placar1} x #{placar2}"
elsif placar1 < placar2
  puts "O #{time2} é o vencedor do jogo por #{placar2} x #{placar1}"
else
  puts "O jogo entre #{time1} e #{time2} terminou empatado por #{placar1} x #{placar2}"
end
