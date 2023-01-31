#15. Escreva um programa que leia dois nomes e informe se os mesmos são iguais. Além de informar se os nomes são iguais, ele deve informar se há diferenças na digitação de letras maiúsculas/ minúsculas. DICA: use o método upcase de String. 


print "Escreva o primeiro nome: "
p1 = gets.chomp

print "Escreva o segundo nome: "
p2 = gets.chomp

comparacao =
if    p1 == p2                then "Os nomes são iguais"
elsif p1.upcase == p2.upcase  then "Os nomes são iguais mais com letra maiúscula" 
else   "São diferentes"       end

puts comparacao



  