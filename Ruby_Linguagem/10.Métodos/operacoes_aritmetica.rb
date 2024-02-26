puts "Qual operação atritmética deseja fazer?"
print "1 - Soma, 2 - Subtração, 3 - Multiplicação, 4 - Divisão, 5 - Exponenciação, 6 - Porcentagem: "

escolha = gets.chomp

puts "Escreva dois Números."
print "O primeiro: "
n1 = gets.chomp.to_f

print "O segundo: "
n2 = gets.chomp.to_i

def operacao(escolha, n1, n2)
  case escolha

  when  1
     puts n1 + n2   
   whem  2
     puts n1 - n2
   whem  3
     puts n1 * n2
   whem  4
     puts n1 / n2
   whem  5
     puts n1 ** n2
   whem  6
     puts n1 % n2
   else
     puts "Não tem esta opção"
     return
  end
end

operacao(escolha, n1, n2)