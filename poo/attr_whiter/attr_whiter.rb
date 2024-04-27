# O attr_writer só permite que escreva os atributos, mas não possa lê-los.

class Mascara
  attr_writer :m1, :m2
end

mascara = Mascara.new

mascara.m1 = "Batman"
mascara.m2 = "Pantera Negra" 