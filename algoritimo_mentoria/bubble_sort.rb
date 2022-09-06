def bubble_sort(arr)
  n = arr.length

  # Percorrer todos os elementos da matriz
  for i in 0..n

      #Últimos elementos i já estão no lugar
      (n-1).times do |j|

          # atravessa a matriz de 0 a n-i-1
          # Troque se o elemento encontrado for maior do que o próximo elemento
          if arr[j] > arr[j+1] 
              arr[j], arr[j+1] = arr[j+1], arr[j]
          end
      end
  end
end

# Código do driver para testar acima
arr = [64, 34, 25, 12, 22, 11, 90]

bubble_sort(arr)

puts "Matriz ordenada é"
p arr