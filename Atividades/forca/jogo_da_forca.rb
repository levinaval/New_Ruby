 #def jogo_da_forca
 # nome = da_boas_vindas
 # 
 # loop do
 #     joga nome
 #     if nao_quer_jogar?
 #         break
 #     end
 # end
 #end 

 #desenvolvendo
 def jogo_da_forca(da_boas_vindas)

    puts "Sejão #{da_boas_vindas}, desejão jogar?"
    puts "Sim ou Não"
 end 
  
 jogo_da_forca("Bem vindos")

  joga = gets.chomp

  def o_jogo
  
   loop do
    if joga == "sim"
      puts "Ao jogo então"
    elsif joga == "não"
      break
    else
      puts "Não temos esta opção!"
    end
   end
  end

  puts o_jogo