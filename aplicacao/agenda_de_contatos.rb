class Contact
  attr_reader :name, :phone_number, :email

  def initialize(name, phone_number, email)
    @name, @phone_number, @email = name, phone_number, email
  end

  def to_s
    "#{@name}: #{@phone_number}, #{@email}"
  end
end

class ContactList
  def initialize
    @contacts = []
  end

  def add_contact(contact)
    @contacts << contact
  end

  def display_contacts
    puts "Lista de Contatos:"
    @contacts.each_with_index do |contact, index|
      puts "#{index + 1}. #{contact}"
    end
  end
end

contact_list = ContactList.new

loop do
  puts "Digite o nome do contato (ou 'sair' para sair):"
  name = gets.chomp
  break if name.downcase == 'sair'
  
  puts "Digite o número de telefone:"
  phone_number = gets.chomp
  
  puts "Digite o endereço de e-mail:"
  email = gets.chomp

  contact = Contact.new(name, phone_number, email)
  contact_list.add_contact(contact)
  contact_list.display_contacts
end
