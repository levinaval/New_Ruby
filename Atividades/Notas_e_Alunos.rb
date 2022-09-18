turma = {}
notas = []

puts "1. adiciona aluno e nota, 2. sair:"  
   cod = gets.chomp.to_i
   if cod == 1
    puts "Digite o nome do aluno."
     aluno = gets.chomp
     nota1 = gets.chomp.to_f
     nota2 = gets.chomp.to_f
     nota3 = gets.chomp.to_f
     notas << nota1 
     notas << nota2
     notas << nota3 # notas.push(nota1, nota2, nota3)
     turma[aluno] = notas
     puts turma
    elsif cod == 2
      puts "Obrigado!"
      break
    else
      puts "Não existe essa operação"
    end
  end