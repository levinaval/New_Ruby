class Reverse
  def name

    puts "Digite seu nome completo."
     
    fist_name = gets.chomp
    
  end  
end

rev = Reverse.new

puts rev.name.reverse