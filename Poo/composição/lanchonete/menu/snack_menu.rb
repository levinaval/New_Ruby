class SnackMenu
  def initialize(poi1, poi2, opi3, opi4, opi5, opi6)
   @poi1, @poi2, @poi3, @poi4, @poi5, @poi6 = poi1, poi2, opi3, opi4, opi5, opi6 
  end

  def menu1
    puts "Este é a nossas opções."
    puts "#{@poi1}, #{@poi2}, #{@poi3}, #{@poi4}, #{@poi5}, #{@poi6}"
  end
end

snack_menu = SnackMenu.new("1 - Sopa", "2 - Cachorro_Quente", "3 - Hambúrquer", "4 - Batata_Frita", "5 - File_Parmegiana", "6 - Pastel",)

puts snack_menu.menu1