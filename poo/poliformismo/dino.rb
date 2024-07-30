class Dinossauro
    def initialize(tiranossauro)
        @tiranossauro = tiranossauro
    end

    def comunicar
        puts "O #{@tiranossauro} chegou!"
    end
end

dino = Dinossauro.new("Cara de cicatriz")

dino.comunicar