def tipo_de_contagem(matriz)
	matriz_de_contagem = criar_tipo_de_contagem(matriz)
  
	sorted = Array.new(matriz.length)
  
	matriz.each do |item|
	  sorted[matriz_de_contagem[item] - 1] = item
	  matriz_de_contagem[item] -= 1
	end
  
  sorted
end
  
def criar_tipo_de_contagem(matriz)
  matriz_de_contagem = Array.new(matriz.max + 1, 0)
  matriz.each { |item| matriz_de_contagem[item] += 1 }
 
  (1..(matriz_de_contagem.length - 1)).each do |i|
 matriz_de_contagem[i] += matriz_de_contagem[i - 1]
  end
 
matriz_de_contagem
end
 
puts tipo_de_contagem([6, 3, 1, 7, 2, 4, 8, 1, 2, 4]).to_s
puts tipo_de_contagem([1, 4, 1, 2, 7, 5, 2, 0]).to_s

or

def counting_sort(array)
	counting_array = create_counting_array(array)
  
	sorted = Array.new(array.length)
  
	array.each do |item|
	  sorted[counting_array[item] - 1] = item
	  counting_array[item] -= 1
	end
  
  sorted
end
  
def create_counting_array(array)
  counting_array = Array.new(array.max + 1, 0)
  array.each { |item| counting_array[item] += 1 }
 
  (1..(counting_array.length - 1)).each do |i|
 counting_array[i] += counting_array[i - 1]
  end
 
counting_array
end
 
puts counting_sort([6, 3, 1, 7, 2, 4, 8, 1, 2, 4]).to_s
puts counting_sort([1, 4, 1, 2, 7, 5, 2, 0]).to_s