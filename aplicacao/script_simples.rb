#Vamos criar um app simples para lê um arquivo de texto e contar quantas vezes cada palavra aparece nele.

file_path = 'texto_script'
word_count = Hash.new(0)

File.open(file_path, 'r') do |file|
  file.each_line do |line|
    line.downcase.split.each do |word|
      word_count[word] += 1
    end
  end
end

word_count.each do |word, count|
  puts "#{word}: #{count}"
end