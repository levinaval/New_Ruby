require_relative 'cachorro'
require_relative 'carro'
require_relative 'funcionario'

pitbul = Pitbul.new

car = Car.new

employee = Employee.new

puts "O vendedor tem uma comição #{employee.calculate_commission(2000.0, 8)}. Ao sair do trabalho ele correu para o carro #{car.turn_on_car}. Pois tinha um cahorro comreendo #{pitbul.comunicar}"


