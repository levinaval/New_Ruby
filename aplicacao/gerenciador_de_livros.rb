class Book
attr_reader :title, :author, :genre

  def initialize(title, author, genre)
    @title,@author,@genre = title, author, genre
  end

  def to_s
    "#{@title} - #{@author} #{@genre}"
  end
end