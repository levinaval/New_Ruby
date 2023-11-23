class Turma
  attr_reader :nome, :numerode_de_sala, :professor_responsavel

  def initialize(nome, numerode_de_sala, professor_responsavel)
      @nome = nome
      @numerode_de_sala = numerode_de_sala
      @professor_responsavel = professor_responsavel
  end
end

turma1 = Turma.new("luna", 14, "lucas")

puts "aluna: #{turma1.nome}, sala: #{turma1.numerode_de_sala}, professor responsával; #{turma1.professor_responsavel}"