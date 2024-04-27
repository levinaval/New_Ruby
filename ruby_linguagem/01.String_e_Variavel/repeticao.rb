# O while é uma estrutura de repetição condicional que executa enquanto a condição for verdadeira. 
# Nesse caso, a condição é "numero % 2 != 0", que será falsa quando o usuário digitar um número par. 
# O trecho de código a ser executado repetidamente se localiza entre o begin (linha 1) e o end (linha 4).

begin
  puts "Digite um número par: "
  numero = gets.chomp.to_i
end while numero % 2 != 0

puts "#{numero} é par!"