#Função para calcular o valor de um número.
def valor_absoluto(n)
  return n.abs
end

#Função para calcular a exponenciação de um elevado a uma potência.
def exponenciacao(base, expoente)
  return base ** expoente
end

#Função para calcular o valor inteiro de um número.
def valor_inteiro(n)
  return n.to_i
end

#Função para calcular a raiz quadrada de um número.
def raiz(n)
  return Math.sqrt(n)
end

 #Função para retornar o valor de Pi.
 def retorna_pi()
   return Math::PI
 end

 #Função para calcular o seno de um ângulo em radianos.
 def seno_radianos(an)
   return Math.sin(an)
 end

 #Função para calcular o cosseno de um ângulo em radianos.
 def cosseno_radianos(an)
   return Math.cos(an)
 end

 #Função para calcular a tangente de um ângulo em radiano.
 def tangente_radiano(an)
   return Math.tan(an)
 end

 puts "Valor absoluto de -5: #{valor_absoluto(-5)}"
 puts "Exponenciação de 2 elevado a 3: #{exponenciacao(2, 3)}"
 puts "Valor inteiro de 3.14: #{valor_inteiro(3.14)}"
 puts "Raiz quadrada de 16: #{raiz(16)}"
 puts "Valor de Pi: #{retorna_pi()}"
 puts "Seno de 90 graus em radiano: #{seno_radianos(Math::PI / 2)}"
 puts "Cosseno de 0 graus em radianos: #{cosseno_radianos(0)}"
 puts "Tangente de 45 graus em radianos: #{tangente_radianos(Math::PI / 4)}"