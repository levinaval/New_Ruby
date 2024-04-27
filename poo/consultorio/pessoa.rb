class Pessoa
  attr_reader :name, :matricola
  def initialize(name, matricola)
    @name, @matricola = name, matricola
  end
end


puts pessoa.name
puts pessoa.matricola
