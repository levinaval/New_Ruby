# Vamos criar um app simples para medir o IMC.

# Definição da classe CalculatorIMC para realizar o cálculo e interpretação do IMC
class CalculatorIMC
  # Método para calcular o IMC (Índice de Massa Corporal)
  def calculate_imc(weight, height)
    imc = weight / (height ** 2)  # Calcula o IMC usando a fórmula peso / altura^2
    return imc.round(2)  # Arredonda o IMC para 2 casas decimais e retorna o valor
  end  

  # Método para interpretar o valor do IMC
  def to_interpret_imc(imc)
    if imc < 18.5
      return "Abaixo do peso"  # Retorna a interpretação "Abaixo do peso" se o IMC for menor que 18.5
    elsif imc >= 18.5 && imc < 25
      return "Peso normal"  # Retorna a interpretação "Peso normal" se o IMC estiver entre 18.5 e 24.9
    elsif imc >= 25 && imc < 30
      return "Sobrepeso"  # Retorna a interpretação "Sobrepeso" se o IMC estiver entre 25 e 29.9
    else
      return "Obesidade"  # Retorna a interpretação "Obesidade" se o IMC for 30 ou maior
    end
  end
end

# Início do fluxo principal do programa
puts "Calculadora de IMC"  # Imprime um cabeçalho
print "Por favor, insira seu peso em Kg: "  # Solicita ao usuário que insira seu peso
weight = gets.chomp.to_f  # Lê o peso do usuário e converte para float

print "Por favor, insira sua altura em metros: "  # Solicita ao usuário que insira sua altura
height = gets.chomp.to_f  # Lê a altura do usuário e converte para float

# Cria uma nova instância de CalculatorIMC
calculator = CalculatorIMC.new

# Calcula o IMC usando os valores fornecidos pelo usuário
imc = calculator.calculate_imc(weight, height)

# Interpreta o valor do IMC calculado
interpretation = calculator.to_interpret_imc(imc)

# Exibe o resultado do IMC e sua interpretação
puts "\nSeu IMC é: #{imc}"
puts "Interpretação: #{interpretation}"
