nomes = ["Colher", "Martelo", "Prego", "Parafuso", "----"]

construcao = {material:"Cimento", quantidade:5, local:5.5}

for nome in nomes do
  puts nomes
end

for k, v in construcao do
  puts "#{k}: #{v}"
end