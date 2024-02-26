puts "Qual operação atritmética deseja fazer?"
print "1 - Soma, 2 - Subtração, 3 - Multiplicação, 4 - Divisão, 5 - Exponenciação, 6 - Porcentagem: "

escolha = gets.chomp.to_i

puts "Escreva dois Números."
print "O primeiro: "
n1 = gets.chomp.to_f

print "O segundo: "
n2 = gets.chomp.to_f

def operacao(escolha, n1, n2)

case escolha
  when  1
     puts n1 + n2   
  when  2
     puts n1 - n2
  when  3
     puts n1 * n2
  when  4
     puts n1 / n2
  when  5
     puts n1 ** n2
  when  6
     puts (n1 * n2) / 100
   else
     puts "Não tem esta opção"
     return
  end
end

operacao(escolha, n1, n2)