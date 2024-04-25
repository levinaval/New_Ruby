def exponenciacao(base, potencia)
  resultado = 1

  potencia.times do
    resultado *= base
  end

  return resultado
end

puts exponenciacao(4, 5)