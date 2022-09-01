senha = 123

print "digite a senha: "
usuario = gets.chomp.to_i

if senha == usuario
  puts "Senha correta: Acesso permitido"
 else
  puts "Senha incorreta: Acesso negado"
end