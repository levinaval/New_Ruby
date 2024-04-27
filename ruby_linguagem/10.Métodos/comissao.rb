def calculate_commission(sale, gratification)

  commission = (sale * gratification) / 100
  difference = sale - commission
  
   # exibe o resultado
   puts "O valor que fica para o estabelecimento: " +
    difference.to_s
  
   puts "A comição para o vendedor: " +
    commission.to_s
 end

 calculate_commission(2000.0, 8)
 