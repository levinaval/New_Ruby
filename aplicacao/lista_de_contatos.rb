# classe Contact representa um contato com nome, número de telefone e e-mail.
class Contact
  attr_accessor :name, :phone_number, :email
  def initialize(name, phone_number, email = nil)
    @name, @phone_number, @email = name, phone_number, email
  end

  def to_s
    email_info = email.nil? || email.strip.empty? ? "Sem e-mail" : email "#{name}: #{phone_number}, #{email_info}"
  end
end