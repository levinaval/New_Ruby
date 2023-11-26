class DeliveryChoice
  def initialize(pick_up, deliver)
    @pick_up, @deliver = pick_up, deliver
  end

  def search
    puts "A retirada podera ser feita em 40 minutos" 
  end

  def to_send
    puts "A entrega saira em 40 minutos!"
  end
end

delivery_choice = DeliveryChoice.new(@pick_up, @deliver)

puts delivery_choice.search
puts delivery_choice.to_send