print "Qual é a sua profição? "
nome = gets.chomp

#if nome == "motorista"
#  puts "profição em extinção!"
#  
#elsif nome == "progamador"
#  puts "Grande profição em crescimento!!"
#  
#else
#  puts "Ainda tem algun futuro! kkk"
#  
#end

proficao = 
if nome == "motorista" then "profição em extinção!" elsif nome == "progamador" then "Grande profição em crescimento!!" else "Ainda tem algun futuro? kkk" end

puts "Esta profição #{nome}, #{proficao} "
