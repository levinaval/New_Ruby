print "digite um número de um ângulo: "
x = gets.chomp.to_f

v = x / 360 

if v >= 0.000 && v <= 0.090
  puts "Um quarto de volta"
 elsif v >= 0.090 && v <= 0.180
  puts "Dois quarto de volta"
 elsif v >= 0.180 && v <= 0.270
  puts "Trẽs quarto de volta"
 elsif v >= 0.270 && v <= 0.360
  puts "Quatro quarto de volta"
 else
  puts "#{v} volta(s)"
end

puts v 