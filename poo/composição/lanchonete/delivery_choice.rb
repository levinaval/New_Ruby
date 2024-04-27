# A classe responsável pela retirada ou entrega
class DeliveryChoice
  
  def initialize(pick_up, deliver)
    @pick_up, @deliver = pick_up, deliver
  end

  def search
    puts "A retirada poderá ser feita em 40 minutos"
  end

  def to_send
    puts "A entrega sairá em 40 minutos!"
  end
end