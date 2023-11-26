class OrderInclusion
  def initialize(new_order1, new_order2)
    @new_order1, @new_order2 = new_order1, new_order2
  end

  def order_cart2
   puts "Este é seu novo pedido de lanche:"
   puts "Os pedidos: #{@new_order1} e #{@new_order2}" 
  end
end

order_inclusion = OrderInclusion.new(@new_order1, @new_order2)

puts order_inclusion.order_cart2