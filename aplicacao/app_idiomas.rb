#Vamos criar um app simples para a

class AppIdiomas
  attr_accessor :vocabulario

  def initialize
    @vocabulario = {}
  end

  def adicionar_palavra(palavra, traducao)
    @vocabulario[palavra] = traducao
  end

  def traduzir(palavra)
    @vocabulario[palavra]
  end
end

idiomas = AppIdiomas.new

loop do
  puts "Bem-vindo ao programa de aprendizado de idiomas!"
  puts "O que você gostaria de fazer?"
  puts "1. Adicionar palavra ao vocabulário"
  puts "2. Traduzir uma palavra"
  puts "3. Sair"

  print "Escolha uma opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    print "Digite a palavra em inglês: "
    palavra = gets.chomp
    print "Digite a tradução em português: "
    traducao = gets.chomp
    idiomas.adicionar_palavra(palavra, traducao)
    puts "Palavra adicionada com sucesso ao vocabulário!"
  when 2
    print "Digite a palavra que você gostaria de traduzir: "
    palavra = gets.chomp
    traducao = idiomas.traduzir(palavra)
    if traducao
      puts "A tradução de '#{palavra}' é '#{traducao}'"
    else
      puts "Palavra não encontrada no vocabulário."
    end
  when 3
    puts "Obrigado por usar o programa. Até mais!"
    break
  else
    puts "Opção inválida. Por favor, escolha uma opção válida."
  end

  puts "\n"  # Adiciona uma linha em branco para melhorar a legibilidade
end