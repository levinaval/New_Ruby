def primo?(number)
  return false if number <= 1
  (2..Math.sqrt(number)).none? { |i| (number % i).zero? }
end

def primeiros_primos(n)
  primos = []
  i = 2
  while primos.length < n
    primos << i if primo?(i)
    i += 1
  end
  return primos
end

puts "Digite a quantidade de números primos que gerar:"
quantidade = gets.chomp.to_i
primos = primeiros_primos(quantidade)
puts "Os primeiros #{quantidade} números primos são: #{primos.join(',')}"