#Vamos criar um app simples para contatos telefonicos.

# Definição da classe Contact, que representa um contato com nome, número de telefone e e-mail.
class Contact
  attr_reader :name, :phone_number, :email

  # Método de inicialização da classe Contact.
  def initialize(name, phone_number, email)
    @name, @phone_number, @email = name, phone_number, email
  end

  # Método para formatar a exibição do contato como uma string.
  def to_s
    "#{@name}: #{@phone_number}, #{@email}"
  end
end

# Definição da classe ContactList, que genrencia uma lista de contatos.
class ContactList
  # Método de inicialização da classe ContactList.
  def initialize
    @contacts = [] #Array para armazenar os contatos.
  end
  # Método para adicionar um contato à lista.
  def add_contact(contact)
    @contacts << contact
  end
  # Método para exibir todos os contatos da lista.
  def display_contacts
    puts "Lista de Contatos:"
    @contacts.each_with_index do |contact, index|
      puts "#{index + 1}. #{contact}"
    end
  end
end

# Instanciação da classe ContactList para gerencia os contatos.
contact_list = ContactList.new

# Loop para permitir que o usuário adicione contatos à lista.
loop do
  puts "Digite o nome do contato (ou 'sair' para sair):"
  name = gets.chomp
  break if name.downcase == 'sair' # Sai do loop se o usuário digitar 'sair'.
  
  puts "Digite o número de telefone:"
  phone_number = gets.chomp
  
  puts "Digite o endereço de e-mail:"
  email = gets.chomp
  
  # Cria um novo objeto de contato e adiciona à lista de contatos.
  contact = Contact.new(name, phone_number, email)
  contact_list.add_contact(contact)
  # Exibe a lista de contatos atualizada.
  contact_list.display_contacts
end
