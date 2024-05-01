class Note
  attr_reader :title, :content, :category
  def initialize(title, content, category)
    @title, @content, @category = title, content, category
  end

  def to_s
    "Categoria: #{@category}/n#{@title}:/n#{@content}"
  end
end