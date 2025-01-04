# PROJETO ENTRE AMIGOS

# AQUI ESTA O LINK DA AULA 01  " https://www.youtube.com/watch?v=pMmyjj8qvO0&t=186s "

#tudo que quiser escrever siga esse exemplo e deixa seu comentario. 

# INICIO DA AULA

#AULA 01 

# Adicionar, Editar e Remover contato:
# Contato terão as seguintes informações: nome e telefone
# Podemos ver todos os contatos registrados ou somente um contato;

@agenda =[
{nome:"EuGiovane" , telefone:"21971331981"},
{nome:"Amigo1" , telefone:"1"},
{nome:"Amigo2" , telefone:"2"},
{nome:"Amigo3" , telefone:"3"},
{nome:"Amigo4" , telefone:"4"},
]

def todos_contatos
    @agenda.each do |contato|
        putd "#{contato[:nome]} - #{contato[:telefone]}"
    end
end

loop do 

puts " 1. Contatos\n2. Adicionar Contato\n3.Ver Contrato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
    codigo= gets.chomp.to_i
    case 
    when codigo == 0
        puts"Até logo"
        break

    when contato == 1
    end
end
# faça um teste para verificar se rodou 
    # assim que alterar algo infomar no grupo
