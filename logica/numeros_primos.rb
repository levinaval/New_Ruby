def cousin?(number)
  return false if number <= 1
  (2..Math.sqrt(number)).none? { |i| (number % i).zero? }
end

def first_cousins(n)
  cousins = []
  i = 2
  while cousins.length < n
    cousins << i if cousin?(i)
    i += 1
  end
  return cousins
end

puts "Digite a quantidade de números primos que gerar:"
amount = gets.chomp.to_i
cousins = first_cousins(amount)
puts "Os primeiros #{amount} números primos são: #{cousins.join(',')}"