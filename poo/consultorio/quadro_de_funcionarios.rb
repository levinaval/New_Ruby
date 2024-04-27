class QuadroDeFuncionarios
  attr_reader :pessoa, :auxiliar, :secretaria
  def initialize(pessoa, auxiliar, secretaria)
    @pessoa, @auxiliar, @secretaria = pessoa, auxiliar, secretaria
  end
end