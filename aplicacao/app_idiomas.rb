class AppIdiomas
  attr_accessor :vocabulario
  def initialize
    @vocabulario = {}
  end

  def adicionar_palavras(palavra, traducao)
    @vocabulario[palavra] = traducao
  end

  def traduzir(palavra)
    @vocabulario[palavra]
  end
end

idiomas = AppIdiomas.new

idiomas.adicionar_palavras("hello", "ola")
idiomas.adicionar_palavras("goodbye", "adeus")
idiomas.adicionar_palavras("cat", "gato")
idiomas.adicionar_palavras("dog", "cachorro")

puts idiomas.traduzir("hello")
puts idiomas.traduzir("goodbye")
puts idiomas.traduzir("cat")
puts idiomas.traduzir("dog")