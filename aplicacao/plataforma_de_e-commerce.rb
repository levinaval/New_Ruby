# Criando uma aplicação simples para criar uma loja online e vender produtos ou servisos.

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name, @price = name, price
  end

  def to_s
    "#{name} R$#{price}"
  end
end

class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def display_cart
    puts "Item no carrinho:"
    @items.each_with_index do |item, index|
      puts "#{index + 1}. #{item}"
    end
  end
end

shopping_cart = ShoppingCart.new

loop do
  puts "Digite o nome do produto(ou 'Sair')"
  name = gets.chomp
  break if name.downcase == 'sair'
  
  puts "Digite o preço do produto:"
  price = gets.chomp.to_f

  product = Product.new(name, price)
  shopping_cart.add_item(product)
  shopping_cart.display_cart
end