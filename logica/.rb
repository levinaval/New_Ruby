class CalculadoraIMC
  def calcular_imc(peso, altura)
    imc = peso / (altura ** 2)
    return imc.round(2) # Arredonda para duas casas decimais
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

# Interface do usuário
puts "Calculadora de IMC"
puts "Por favor, insira seu peso em kg:"
peso = gets.chomp.to_f

puts "Por favor, insira sua altura em metros:"
altura = gets.chomp.to_f

# Criar uma instância da calculadora de IMC
calculadora = CalculadoraIMC.new

# Calcular IMC
imc = calculadora.calcular_imc(peso, altura)

# Interpretar IMC
interpretacao = calculadora.interpretar_imc(imc)

# Exibir resultado
puts "\nSeu IMC é: #{imc}"
puts "Interpretação: #{interpretacao}"

