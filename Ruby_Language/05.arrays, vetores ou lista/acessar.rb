#código para acessar algum item em uma Array.

lista = []

lista.push("ha", "he", "hi", "kk", "rr")
print lista[0..4] 

##código para acessar os ultimos item em uma Array.

lista = []

lista.push("ha", "he", "hi", "kk", "rr")
puts lista[-3..-1]

# obs: Para chamar só o primeiro ou o último.
puts lista.sort.first
        #or 
puts lista.sort.last