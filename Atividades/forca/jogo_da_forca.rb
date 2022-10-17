def jogo_da_forca(da_boas_vindas)
  nome = da_boas_vindas
  
  loop do
      joga nome
      if nao_quer_jogar?
          break
      end
  end
end 

 puts jogo_da_forca("Bem vindos")