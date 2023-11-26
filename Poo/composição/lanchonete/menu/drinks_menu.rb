class DrinksMenu
  def initialize(poi1, poi2, opi3, opi4, opi5, opi6)
   @poi1, @poi2, @poi3, @poi4, @poi5, @poi6 = poi1, poi2, opi3, opi4, opi5, opi6 
  end

  def menu1
    puts "Este é a nossas opções."
    puts "#{@poi1}, #{@poi2}, #{@poi3}, #{@poi4}, #{@poi5}, #{@poi6}"
  end
end

drinks_menu = DrinksMenu.new("1 - Coca Cola(Lata)", "2 - Fanta Laranja(Lata)", "3 - Fanta Uva(Lata)", "4 - Guaraná Antarctica(Lata)", "5 - Peps(Lata)", "6 - Suco")

puts drinks_menu.menu1