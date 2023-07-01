class Titulo
  
  # Este hahes guarda as informações com os títulos e autores.

  TITULOS = {
    "Em Busca do Tempo Perdido" => "Em Busca do Tempo Perdido",
    "Ulysses" => "Ulysses", 
    "Dom Quixote" => "Dom Quixote"
  }

  # Você pode chamar o método get_titulo na classe Titulo para obter o autor com base no título inserido pelo usuário.

  def self.get_titulo(titulo)
    TITULOS[titulo]
  end
end