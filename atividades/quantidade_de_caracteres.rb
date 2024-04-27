# Escreva um programa que leia dois nomes e mostre o que contém maior quantidade de caracteres. 

print "Escreva seu nome:"
name1 = gets.chomp

print "Escreva outro nome:"
name2 = gets.chomp

def contagem_de_caracteres(name1, name2)
  
  name1.length 
  name2.length 

end

contagem_de_caracteres(name1, name2)

def maior_quantidade(name1, name2)
  if name1.length > name2.length
    puts
    puts "O nome #{name1} é o que tem o maior números com #{name1.length} de caracteres!"
  elsif name1.length < name2.length
    puts
    puts "O nome #{name2} é o que tem o maior números com #{name2.length} de caracteres!"
  else
    puts
    puts "O nome #{name1} e o nome #{name2}, iguais com o mesmo número de caracteres com #{name1.length} cada!"
  end    
end

maior_quantidade(name1, name2)