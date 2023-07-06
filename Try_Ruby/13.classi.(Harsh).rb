class Livro
  def pedir_titulo
    print "Insira um título de livro: "
    titulo = gets.chomp
    return titulo
  end
end

livro = Livro.new
titulo = livro.pedir_titulo

classificacoes = Hash.new(0)

livros = {
  "Em Busca do Tempo Perdido" => "Classificação 1",
  "Ulysses" => "Classificação 2",
  "Dom Quixote" => "Classificação 1"
}

livros.values.each do |classificacao|
  classificacoes[classificacao] += 1
end

puts classificacoes