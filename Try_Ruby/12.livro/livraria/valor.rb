class Valor
  VALORES = {
    "Em Busca do Tempo Perdido" => 100.00, 
    "Ulysses" => 50.90, 
    "Dom Quixote" => 29.90
  }

  def self.get_valor(titulo)
    VALORES[titulo]
  end
end