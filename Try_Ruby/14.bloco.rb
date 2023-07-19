# basicamente, um bloco é um pedaço de código Ruby cercado por chaves {}.

# Blocos são sempre associados a métodos. Como o método times, que pega o bloco e roda o código dele várias e várias vezes. (No nosso exemplo: cinco vezes).

class Repetir
  def tempo
    5.times{puts "Levi"}
  end
end

repetir = Repetir.new

repetir.tempo

# continuação.

# Aqui, o método .times (significa vezes) envia o valor para a variável |vez| . Porém, note que a variável vez só é conhecida dentro do bloco.

class Enumera
  def contagem
    5.times { |vez|
      puts vez
    }    
  end
end

enu = Enumera.new
enu.contagem