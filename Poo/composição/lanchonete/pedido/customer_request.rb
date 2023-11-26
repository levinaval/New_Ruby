class CustomerRequest
  def initialize(snack_order, drink_order)
    @snack_order, @drink_order = snack_order, drink_order
  end

  def show_order_cart
    puts "Este foram seus pedidos:"
    puts "Os laches: #{@snack_order}"
    puts "Os laches: #{@drink_order}"
  end
end

customer_request = CustomerRequest.new(@snack_order, @drink_order)
puts customer_request.show_order_cart