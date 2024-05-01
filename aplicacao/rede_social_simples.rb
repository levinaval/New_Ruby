#Vamos criar um app simples para os usuários podem postar atualizações de status.

class Post
  attr_reader :author, :content

  def initialize(author, content)
    @author, @content = author, content
  end

  def to_s
    "#{@author}: #{@content}"
  end
end

class SocialNetwork
  def initialize
    @posts = []
  end

  def add_post(post)
    @posts << post
  end

  def display_posts
    puts "Atualizações de Status:"
    @posts.each do |post|
      puts post
    end
  end
end

social_network = SocialNetwork.new

loop do
  puts "Digite seu nome (ou Sair)"
  author = gets.chomp
  break if author.downcase == "sair"

  puts "Digite sua atualização de status:"
  content = gets.chomp

  post = Post.new(author, content)
  social_network.add_post(post)
  social_network.display_posts
end