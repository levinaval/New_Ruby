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

