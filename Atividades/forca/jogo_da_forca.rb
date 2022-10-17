def jogo_da_forca
  nome = da_boas_vindas
  
  loop do
      joga nome
      if nao_quer_jogar?
          break
      end
  end
 end 

 #desenvolvendo
 def jogo_da_forca(da_boas_vindas)
    puts "Bem vindos"
  end 
  
   jogo_da_forca(da_boas_vindas)