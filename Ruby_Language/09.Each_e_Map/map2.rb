array = [1, 2, 3, 4]

#new_array = array.map do |a|
#
#  a * 4
#
#end
#
#puts "Resultado dos calculos!"
#puts "Primeiro #{array}"
#puts
#puts "Segundo #{new_array}"


array.map! do |a|

  a * 2

end
puts " #{array}"