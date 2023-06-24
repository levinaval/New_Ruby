# O método gsub é abreviação para substituição global. Ele substitui todas as ocorrências de “torrada” para “manga”.

class Substituicao
  def poema
    torrada = "Minha torrada voou da minha mão
    E minha torrada se foi para a lua.
    Mas quando eu vejo isso na televisão,
    Colocando nossa bandeira no cometa Halley,
    Mais ainda eu quero come-la.
    
    Isto rima ?"    
  
    manga = "Minha manga voou da minha mão
    E minha manga se foi para a lua.
    Mas quando eu vejo isso na televisão,
    Colocando nossa bandeira no cometa Halley,
    Mais ainda eu quero come-la."
  end    
end

subt = Substituicao.new 
puts subt.poema.gsub("manga", "torrada")

#or

string = "Olá, mundo!"
novo_string = string.gsub("mundo", "amigo")
puts novo_string

# or

class Opcao
  def poema

   puts
   puts "Escolha um poema. 1 ou 2?"
   escolha = gets.chomp.to_i
   
    if escolha == 1
    puts torrada = "Minha torrada voou da minha mão
    E minha torrada se foi para a lua.
    Mas quando eu vejo isso na televisão,
    Colocando nossa bandeira no cometa Halley,
    Mais ainda eu quero come-la.
    
    Isto rima ?"

    elsif escolha == 2 
      puts manga = "Minha manga voou da minha mão
      E minha manga se foi para a lua.
      Mas quando eu vejo isso na televisão,
      Colocando nossa bandeira no cometa Halley,
      Mais ainda eu quero come-la."
    else
      puts "não tem esta opção!"
    end
  end
end

op = Opcao.new 
op.poema


