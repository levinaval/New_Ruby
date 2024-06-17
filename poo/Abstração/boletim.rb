# Escreva um algoritmo que receba o nome de um aluno e 3 notas e faça a média aritmética. E mostre se o aluno foi aprovado se a média for maior ou igual a 6.0, recuperação se for menor que 6 e maior ou igual a 3, e se reprovado se a nota for menor que 3. O algoritmo deve reconhecer e negar operação quando a nota for menor que zero ou maior que 10

#Entrada: 6.8, 9.5, 3.3
#Saída: Aluno: Fulano, Média: 6,73 - Aprovado


class School

  def initialize(student, note1, note2, note3)
    @student = student
    @note1 = note1
    @note2 = note2
    @note3 = note3
  end 

  def bulletin
   sum = @note1 + @note2 + @note3
   average = sum / 3
   if average >= 6 && average <= 10
     puts "Aluno:#{@student}, Media: #{average} - Aprovado"
    elsif average < 6 && average >= 3
     puts "Aluno:#{@student}, Media: #{average} - Recuperação!"
    elsif average < 3 && average >= 0
     puts"Aluno:#{@student}, Media: #{average} - Reprovado"
    else
     puts "Alguma nota está inválida"
   end
  end
end

student = gets.chomp
puts "notas."
note1 = gets.chomp.to_f
note2 = gets.chomp.to_f
note3 = gets.chomp.to_f

school = School.new(student, note1, note2, note3)
school.bulletin
