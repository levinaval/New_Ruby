class Matematica
  def mutiplicar(a, b)
    a * b
  end


  def subtrair(a, b)
   a - b
  end

  def divisao(a, b)
    a.to_f / b.to_f
  end
end

mat = Matematica.new

puts mat.mutiplicar(4, 10)
puts mat.subtrair(12, 5)
puts mat.divisao(30, 4)