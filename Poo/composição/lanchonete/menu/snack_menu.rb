class SnackMenu
  def initialize(poi1, opi2, opi3, opi4, opi5, opi6)
   @poi1, @poi2, @poi3, @poi4, @poi5, @poi6 = poi1, poi2, poi3, poi4, poi5, poi6 
  end

  def menu1
    puts "Este é a nossas opções."
    puts "#{@poi1}, #{@poi2}, #{@poi3}, #{@poi4}, #{@poi5}, #{@poi6}"
  end
end

snack_menu = SnackMenu.new("Sopa", "Cachorro_Quente", "Hambúrquer", "Batata_Frita", "File_Parmegiana", "Pastel",)