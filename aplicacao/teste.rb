# PROJETO AGENDA
# Adicionar, Editar e Remover contato:
# Contato terão as seguintes informações: nome e telefone
# Podemos ver todos os contatos registrados ou somente um contato;

# Contatos da agenda.
@agenda =[
{nome:"EuGiovane" , telefone:"21971331981"},
{nome:"Amigo1" , telefone:"1"},
{nome:"Amigo2" , telefone:"2"},
{nome:"Amigo3" , telefone:"3"},
{nome:"Amigo4" , telefone:"4"},
]

# Método para exibir todos os contatos da agenda e imprime o nome e telefone de cada contato.
def todos_contatos
    @agenda.each do |contato|
        putd "#{contato[:nome]} - #{contato[:telefone]}"
    end
end

# Método para exibir os detalhes de um único contato.
def ver_contato
    puts "Digite o nome do contato que deseja visualizar:"
    nome = gets.chomp
    contato = @agenda.find { |c| c[:nome].casecmp(nome).zero? }

    if contato
        puts "Contato não encontrado."
    end
end

loop do 

puts " 1. Contatos\n2. Adicionar Contato\n3.Ver Contrato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
    codigo= gets.chomp.to_i
    case codigo
    when 0
      puts"Até logo!"
      break

    when 1
        todos_contatos
    when 2
        adicionar_contato
    when 3
        ver_contato
    when 4
        editar_contato
    when 5
        remover_contato
    else
        puts "Opção inválida. Tente novamente"
    end
end