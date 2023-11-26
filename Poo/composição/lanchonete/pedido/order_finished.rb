class OrderFinished
  def initialize(snack_order, drink_order, order_inclusion)
    @snack_order, @drink_order, @order_inclusion = snack_order, drink_order, order_inclusion
  end

  def last_car
    puts "Pedido finalisado #{@nack_order}, #{@drink_order} e #{@order_inclusion}"
  end
end

order_finished = OrderFinished.new(@snack_order, @drink_order, @order_inclusion)

puts order_finished.last_car