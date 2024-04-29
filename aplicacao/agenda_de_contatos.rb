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
    @Contacts = []
  end
end