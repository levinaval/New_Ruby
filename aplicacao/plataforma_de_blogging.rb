# Vamos criar um app simples para permitir que os usuários criem novas postagens e visualizem todas as postagens existentes.

class Post
  attr_reader :title, :content

  def initialize(title, content)
    @title, @content = title, content
  end

  def to_s
    "#{title} #{content}"
  end
end

class Blog
  def initialize
    @posts = []
  end

  def add_post(post)
    @posts << post
  end

  def display_posts
    puts "Posts do Blog: "
    @posts.each_with_index do |post, index|
      puts "#{index + 1}. #{post}"
    end
  end
end

blog = Blog.new

loop do
  puts "Digite o titulo da postagem (ou 'Sair'):"
  title = gets.chomp
  break if title.downcase == 'sair'

  puts "Digite o conteúdo da postagem:"
  content = gets.chomp

  post = Post.new(title, content)
  blog.add_post(post)
  blog.display_posts
end