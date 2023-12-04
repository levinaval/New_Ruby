class Professor
  attr_reader :professor1, :disciplina1, :professor2, :disciplina2

  def initialize(professor1, disciplina1, professor2, disciplina2)
    @professor1, @disciplina1, @professor2, @disciplina2 = professor1, disciplina1, professor2, disciplina2
  end
end