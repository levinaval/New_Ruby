# o attr_accessor ja cria os métodos automaticamente para fazer funcionar toda a class.
# OBS: Não é recomendado esta utilização.

class Escola
  attr_accessor :professor, :materia, :aluno
end

escola = Escola.new

escola.professor = "professor: Marco Castro"
escola.materia = "materia: TI"
escola.aluno = "aluno: Lucas Amorim"

puts escola.professor
puts escola.materia
puts escola.aluno