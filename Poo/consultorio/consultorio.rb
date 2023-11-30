require_relative 'pessoa'
require_relative 'auxiliar'
require_relative 'secretaria'

pessoa = Pessoa.new("Laécio", 0100)
auxiliar = Auxiliar.new("Carlos", 0110, "Auxiliar")
secretaria = Secretaria.new
("Brenda", 0120, "Secretária")

consultorio = QuadroDeFuncionarios.new([pessoa, auxiliar], secretaria)

puts 