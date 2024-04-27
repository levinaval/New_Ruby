class CalculadoraIMC
  def calcular_imc(peso, altura)
    imc = peso / (altura ** 2)
   return imc.round(2) 
  end  

  def interpretar_imc(imc)
    if imc < 18.5
      return "Abaixo do peso"
    elsif imc >= 18.5 && imc < 25
      return "Peso normal"
    elsif imc >= 25 && imc < 30
      return "Sobrepeso"
    else
      return "Obesidade"
    end
  end
end

puts "Calculadora de IMC"
print "Por favor, insira seu peso em Kg: "
peso = gets.chomp.to_f

print "Por favor, insira sua altura em metros: "
altura = gets.chomp.to_f

calculadora = CalculadoraIMC.new

imc = calculadora.calcular_imc(peso, altura)

interpretacao = calculadora.interpretar_imc(imc)

puts "/n Seu IMC é: #{imc}"
puts "Interpretação: #{interpretacao}"