#Brincadeira do Impa ou par: escreva um programa que leia dois nomes e dois valores inteiros, que correspondem ao que cada um colocou, e informe quem ganhou o “ímpar ou par”. 

print "Nome do jogador PAR: ",""
player1 = gets.chomp

print "Nome do jogador IMPAR: ",""
player2 = gets.chomp

print "Jogador PAR #{player1} escolha um número: ",""
n1 = gets.chomp.to_i

print "Jogador IMPAR #{player2} escolha um número: ",""
n2 = gets.chomp.to_i

result = if (n1 + n2) %2 == 0 then "Pra" else "Impar" end 
 
winner = if result == "Par" then player1 else player2 end

ns = if winner == "Par" then ni else n2 end
   
puts "O winner é #{result}, o jogador escolheu o número #{ns} parabéns #{winner}"