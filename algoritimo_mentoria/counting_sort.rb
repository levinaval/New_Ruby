def counting_sort(array)
	counting_array = create_counting_array(array)
  
	sorted = Array.new(array.length)
  
	array.each do |item|
	  sorted[counting_array[item] - 1] = item
	  counting_array[item] -= 1
	end
  
  sorted
end
  
