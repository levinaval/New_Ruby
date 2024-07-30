class Employee
    def calculate_commission(sale, gratification)
        commission = (sale * gratification) / 100
        diferenca = sale - commission

        puts "no valor de: " + commission.to_s
    end
end

