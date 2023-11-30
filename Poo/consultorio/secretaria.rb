require_relative 'pessoa'

class Secretaria < Pessoa
  attr_reader :funcao
  def initialize(name, matricola, funcao)
    super(name, matricola)
    @funcao = funcao
  end
end