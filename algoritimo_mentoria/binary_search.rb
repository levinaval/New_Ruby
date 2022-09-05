def binary_search(array, value, first, last)
  if last < first
    return -1
    else
    mid = (first + last) / 2
    if value == array[mid]
      return mid
      else
      if array[mid] < value
        return binary_search(array, value, mid + 1, last)
        else
        return binary_search(array, value, first, mid - 1)
      end
    end
  end
end
  
  
array = Array.new(11) { rand(1..20) }.sort
num = rand(1..20)
first = 0
last = array.length - 1
  
puts "Array => #{array}"
puts "Número: #{num}"
                        
result = binary_search(array, num, first, last)
  
unless result == -1
  puts "O index do número escolhido é: #{result}"
  else
  puts "O número não esta presente no array"
end