module Communicates
  def communicates
    puts "Bem vindo ao #{@hotel_name}, a sua suite fica no #{@to_walk} e o numero da chave é #{@key}"
  end
end

class Hotel
  include Communicates
  attr_reader :hotel_name, :to_walk, :key 
  def initialize(hotel_name, to_walk, key)
    @hotel_name, @to_walk, @key = hotel_name, to_walk, key
  end
end

hotel = Hotel.new("Sol Praia Brissa Hotel", "key to_walk", 205)
hotel.communicates
