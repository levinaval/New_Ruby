class Instrument
    def write
        #puts "Sou a classe principal"
    end
end

# A palavra reservada "SUPER" fas com que o comando das duas classes funcionem de forma conjunta,sem dobrescrever uma a outro.
class Keyboard < Instrument
    def write
        puts "Com o efeito da herança eu funciono!"
    end
end

class Pev < Instrument
    def write
        puts "Eu tanbém funciono subescrevendo a principal."
    end
end

class Pencil
    def write
        puts "Eu não herdo de nem uma outra classe."
    end
end

instrument = Instrument.new
keyboard = Keyboard.new
pencil = Pencil.new
pev = Pev.new

puts "Sou a principal!"
instrument.write
puts

puts "Sou a segunda:"
keyboard.write
puts

puts "Sou a terceira:"
pev.write
puts

puts "Sou a quarta:"
pencil.write
puts