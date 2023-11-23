class Funcionario
  attr_accessor :nome, :funcao, :tempo

  def calcular_comissao(passageiro)
    valor = 0.08 * passageiro
  end
end
  
funcionario1 = Funcionario.new

funcionario1.nome = "levi"
funcionario1.funcao = "motorista"
funcionario1.tempo = "um ano de serviço"

puts "nome: #{funcionario1.nome}, funçao: #{funcionario1.funcao}, tempo: #{funcionario1.tempo}"
puts funcionario1.calcular_comissao(200)