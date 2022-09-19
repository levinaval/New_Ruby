#Escreva um programa que leia um número inteiro que corresponde a um ângulo e informe em qual quadrante este ângulo se encontra e quantas voltas ele dá (360 graus = uma volta).


print "digite um número: "
x = gets.chomp.to_i

if x <= 0 && >= 90
  puts "O #{x} esta no primeiro quandrante"
elsif 
  puts "O #{x} esta no segundo quandrante"
elsif 
  puts "O #{x} esta no terceiro quandrante"
elsif 
  puts "O #{x} esta no quarto quandrante"
else
  
end