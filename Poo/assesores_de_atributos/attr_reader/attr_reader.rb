# O attr_reader só dá acesso a leitura, não permitindo assim a sua modificação.  

#class PessoasDaFamilia
#  attr_reader :nome, :altura 

#  def initialize(nome, altura)
#    @nome = nome
#    @altura = altura
#  end
#end

#individo = PessoasDaFamilia.new("Alfrede", 1.75)

#puts individo.nome
#puts individo.altura

# or  

class PessoasDaFamilia
  attr_reader :nome, :altura 

  def initialize(nome, altura)
    @nome = nome
    @altura = altura
  end

  def pessoa
    puts "Eu me chamo #{self.nome}, sou o mais alto da familia com #{@altura} metros!"
  end
end

individo = PessoasDaFamilia.new("Alfrede", 1.75)

individo.pessoa