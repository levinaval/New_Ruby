class QuantidadeNoEstoque
  QUANTIDADES = {
    "Em Busca do Tempo Perdido" => 10,
    "Ulysses" => 15,
    "Dom Quixote" => 8
  }

  def self.get_quantidade(titulo)
    QUANTIDADES[titulo]
  end
end