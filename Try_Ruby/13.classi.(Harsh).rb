class Livro
  def pedir_titulo
    print "Insira um título de livro: "
    titulo = gets.chomp
    return titulo
  end
end

livro = Livro.new
titulo = livro.pedir_titulo

# Esta hash é criado com um valor padrão de 0. Esse hash será usado para contar o número de ocorrências de cada classificação.

classificacoes = Hash.new(0)

livros = {
  "Em Busca do Tempo Perdido" => "Classificação 1",
  "Ulysses" => "Classificação 2",
  "Dom Quixote" => "Classificação 1"
}

# O método values é chamado no hash livros para obter uma lista dos valores das classificações.

#Utilizando o método each, cada valor da lista de classificações é iterado. Dentro do loop, a contagem da classificação é incrementada no hash classificacoes.

livros.values.each do |classificacao|
  classificacoes[classificacao] += 1
end

puts classificacoes

# Em resumo, esse código solicita um título de livro ao usuário, conta quantos livros existem em cada classificação predefinida e exibe o resultado dessa contagem. Isso pode ser útil para obter estatísticas sobre as classificações dos livros fornecidos.