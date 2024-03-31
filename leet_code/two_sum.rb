def two_sum(nums, target)
  num_indices = {}  # Mapa para armazenar número: índice

  nums.each_with_index do |num, i|
      complement = target - num  # Calcula o complemento necessário

      # Verifica se o complemento está no mapa
      if num_indices.key?(complement)
          # Retorna os índices dos dois números
          return [num_indices[complement], i]
      end
      
      # Armazena o número no mapa
      num_indices[num] = i
  end

  # Se nenhum par de números for encontrado, lançamos uma exceção ou retornamos uma lista vazia
  raise "Nenhum par de números encontrados que somem o alvo."
end

# Exemplo de uso
nums1 = [2, 7, 11, 15]
target1 = 9
puts two_sum(nums1, target1)  # Saída: [0, 1]

nums2 = [3, 2, 4]
target2 = 6
puts two_sum(nums2, target2)  # Saída: [1, 2]

nums3 = [3, 3]
target3 = 6
puts two_sum(nums3, target3)  # Saída: [0, 1]
