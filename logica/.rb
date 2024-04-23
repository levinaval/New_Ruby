print "Escreva um número: "
n = gets.chomp.to_i

def absoluto(n)
  if n < 0
    return -n
  else
    return n
  end
end

puts
puts "O valor absoluto é: #{absoluto(n)}"