require_relative 'turma_a'
require_relative 'turma_b'
require_relative 'professor'

turma_a = TurmaA.new("Antonio", 101, "Alana", 102, "Bruno", 103, "Brena", 104, "Carlos", 105, "Catia", 106, "Debora", 107, "Danilo", 108, "Flavio", 109, "Tony", 110)

turma_b = TurmaB.new("Anjelo", 201, "Alan", 202, "Barboza", 203, "Beatris", 204, "Cortella", 205, "Catarina", 206, "Deby", 207, "Dalio", 208, "Flaviano", 209, "Tomy", 210)

professor = Professor.new("Mario Toteram", "Pythom", "Marta Nobrega", "Ruby")

puts "Olá! Estamos na escola Desenvolvedor do Futuro."
puts
puts "Quer conhecer os nosso profissionais?"
print "Sim (1) Não (2): "
escolha = gets.chop.to_i
puts

 case escolha
  when 1
   puts "Temos em nosso quadro de profissionais os professores: #{professor.professor1}, que leciona na disciplina #{professor.disciplina1} e #{professor.professor2}, que leciona na disciplina #{professor.disciplina2}"
  when 2
   puts "Ok! Até a próxina."
  else
    puts "Escolha incorreta"
 end

puts
puts "E já temos com dua turmas"
puts "Conhecer turmas?"
print "Sim (1) Não (2): "
escola2 = gets.chop.to_i
puts

case escola2
 when 1
  puts "Tuma A do professor #{professor.professor1} de #{professor.disciplina1}"
  puts "#{turma_a.ordem_a}"
  puts "Tuma A do professor #{professor.professor2} de #{professor.disciplina2}"
  puts "#{turma_b.ordem_b}"
 when 2
  puts "Que pena"
 else
  puts "Escolha incorreta"
end