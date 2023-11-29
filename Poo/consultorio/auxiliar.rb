require_relative 'pessoa'

class Secretaria < Pessoa
  attr_reader :funcao
  def initialize(name, matricula, funcao)
    super(name, matricula)
    @funcao = funcao
  end
end
