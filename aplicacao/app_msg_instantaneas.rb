# App simples para  trocar mensagens de texto com amigos e colegas. Neste exemplo, cada mensagem será armazenada em um array para visualização posterior.

class Message
  attr_reader :sender, :content

  def initialize(sender, content)
    @sender, @content = sender, content
  end

  def to_s
    "#{sender}: #{content}"
  end
end

class ChatApp
  def initialize
    @mensages = []
  end

  def send_message(mensage)
    @mensages << mensage
  end

  def diplay_messages
    puts "Mensagens Recebidas:"
    @mensages.each do |message|
      puts message
    end
  end
end

chat_app = ChatApp.new

loop do
  puts "Digite o nome do remetente(ou 'Sair')"
    sender = gets.chomp
    break if sender.downcase == 'sair'

    puts "Digite a mensagem:"
    content = gets.chomp

    message = Message.new(sender, content)
    chat_app.send_message(message)
    chat_app.diplay_messages 
end