class Livro
  def initialize
    @titulo = {
      "Thor" => "O deus do trovão!",
      "O rei leão" => "Tem o timão e pumba!",
      "Poseidon" => "O pai do Thor"
    }
  end

  def historias
    print "O que quer saber? "
    titulo = gets.chomp

    puts
    puts "o #{titulo} e #{@titulo[titulo]}" if @titulo.key?(titulo)
  end
end

livro = Livro.new

livro.historias