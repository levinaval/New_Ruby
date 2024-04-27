puts "incira o código desejado."
puts "1-para inserir dados, 2-para verificar dados, 3-encerra navegação"
decisao = gets.chomp
#  if decisao == 1
#     lista.push 
# end

class Professor
   attr_reader :nome, :matricola

   def initialize(nome, matricola)
       @nome = nome
       @matricola = matricola
   end

   def lista(decisao)
       lista[]
       lista.push 
       lista << gets.chomp 
   end
end

professor1 = Professor.new("diego", "001")

puts "professor: #{professor1.nome}, matricola: #{professor1.matricola}"

# lista[]

# lista.push 
# lista << gets.chomp