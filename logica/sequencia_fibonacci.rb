# A seguência de Fibonacci é série de números em que cada número é a soma dos dois números anteriores. A sequência de Fibinacci pode ser expressa como: F(n) = F(n-1) + F(n - 2)

def fibonacci(n)
  return n if n <= 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

puts "Digite o número de termos da sequência de Fibonacci:"
terms = gets.chomp.to_i
fibonacci_sequence = []
(0..terms-1).each do |n|
  fibonacci_sequence << fibonacci(n)  
end

puts "Sequêcia de Fibonacci até o #{terms}º termo: #{fibonacci_sequence.join(',')}"
