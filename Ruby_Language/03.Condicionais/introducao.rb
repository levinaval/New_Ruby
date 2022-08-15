#and 
#Verdade e Verdade = Verdade
#Verdade e Falso = Falso
#Falso e Falso = Falso
#Falso e Verdade = Falso

#or
#Verdade ou Verdade = Verdade
#Verdade ou Falso = Falso
#Falso ou Falso = Falso
#Falso ou Verdade =Verdade

#not 
#Não Verdade = Falso
#Não Falso = Verdade
#...

puts false && true
puts false || true
puts !false && true

if 
  Expressão que verifiva se uma condição é verdadeira(true), e a partir deste resultado determina se as instruções dentro de seu corpo serão ou não executadas.
  
else
  Informa o que fazer quando a verificaçãode uma condição IF for falada.

elsif 
  Utilisado quando há a necessidade de verificar mais de uma condição em um if.

unless
  Enquanto o if é execultado quando sua condição é verdadeira, o unless ocorre de forma contrária. É execultado apenas quando a condição é (false)  