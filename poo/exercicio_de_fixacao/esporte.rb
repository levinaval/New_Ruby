class Esportista
    def competir
      puts "Participando de uma competição"
    end
  end
    
  class JogadorDeFutibol < Esportista
   def correr 
     puts "Correndo atrás de bola"
   end
  end
  
  class Maratonista < Esportista
   def correr
    puts "Percorrendo o circuito"
   end
  end
  
  esportista = Esportista.new
  jogadordefutibol = JogadorDeFutibol.new
  maratonista = Maratonista.new
  
  esportista.competir
  jogadordefutibol.correr
  maratonista.correr