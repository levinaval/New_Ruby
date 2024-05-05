# um Palíndromo é uma palavra, frase, número ou qualquer seguência de caracteres que permanece a mesma quando lida de trás para frente.

def palindrome?(word)
  word == word.reverse
end

loop do
  print "Digite uma palavra para verificar se é um Palíndromo:(ou 'Sair')"
  word = gets.chomp
  break if word.downcase == 'sair'
  if palindrome?(word)
    puts ""
    puts "#{word.capitalize} é um Palíndromo!"
  else
    puts ""
    puts "#{word.capitalize} não é um Palíndromo!"
  end
end