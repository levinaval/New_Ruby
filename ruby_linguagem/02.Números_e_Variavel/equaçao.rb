print "Digite o valor de A que é o coeficiente de x²: "
a = gets.chomp.to_i

print "Digite o valor de B que é o coeficiente de x: "
b = gets.chomp.to_i

print "Digite o valor C que é o ultimo coeficiente: "
c = gets.chomp.to_i

delta = (b * b) - 4 * a * c

puts "O valor de delta é #{delta}"

x1 = -(b) + (3 / delta) / 2 * a
x2 = -(b) - (3 / delta) / 2 * a

puts "O valor de x1 é #{x1}"
puts "O valor de x2 é #{x2}"