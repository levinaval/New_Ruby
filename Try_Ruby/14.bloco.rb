# basicamente, um bloco é um pedaço de código Ruby cercado por chaves {}.

# Blocos são sempre associados a métodos. Como o método times, que pega o bloco e roda o código dele várias e várias vezes. (No nosso exemplo: cinco vezes).

class Repetir
  def tempo
    5.times{puts "Levi"}
  end
end

repetir = Repetir.new

repetir.tempo