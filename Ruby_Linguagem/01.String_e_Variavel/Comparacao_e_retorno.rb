#Retorna o índice Inteiro da primeira substring que corresponde ao dado regexp, ou nada se nenhuma correspondência for encontrada:

puts 'Levi' =~ /e/ # => 0
puts 'Levi' =~ /L/ # => 1
puts 'Levi' =~ /x/ # => nil

# a decifrar
number = nil 
puts "no. 9"  =~  /(?<number>\d+)/ 
number  # => nil (não atribuído) 
puts /(?<number>\d+)/  =~  "no. 9" 
number  #=> "9"