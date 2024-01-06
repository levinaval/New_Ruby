# Difícil
def calcular_fatorial(numero)
  if numero == 0 || numero == 1
    return 1
  else
    return numero * calcular_fatorial(numero - 1)
  end
end

puts "O fatorial de 5 é #{calcular_fatorial(5)}"

# Manipulação de arrays
frutas = ["maçã", "banana", "laranja"]
frutas.each do |fruta|
  puts "Gosto de #{fruta.capitalize}!"
end
