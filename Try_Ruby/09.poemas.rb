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
puts subt.poema.gsub("torrada", "manga")