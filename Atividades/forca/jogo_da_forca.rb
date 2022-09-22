def jogo_da_forca
  nome = da_boas_vindas
  
  loop do
      joga nome
      if nao_quer_jogar?
          break
      end
  end
 end 