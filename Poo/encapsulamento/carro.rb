class Carro
  attr_reader :modelo, :ano, :cor

  def initialize(modelo, ano, cor)
    @modelo, @ano, @cor = modelo, ano, cor
  end
end

carro = Carro.new("Versa", 2014, "Preto")

#puts carro.modelo
#puts carro.ano
#puts carro.cor

puts "Comprei um carro do modelo #{carro.modelo}, ano #{carro.ano}. É um carro lindo da cor #{carro.cor}"

#or

class Carro
attr_reader :ano, :modelo, :cor
 def initialize(ano, modelo, cor)
   @ano, @modelo, @cor = ano, modelo, cor
 end              

 def comunicar
   puts " Comprei um carro do modelo #{modelo}, ano #{ano}. É um carro lindo na cor #{cor}!"
 end
end

carro = Carro.new(2014, "Versa", "Preta")
puts carro.comunicar          