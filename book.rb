class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def title
    p @title
  end

  def author
    p @author
  end

  def get_title
    p "Title: #{@title}"
  end

  def get_author
    p "Author: #{@author}"
  end
end

pp = Book.new("Pride and Prejudice", "Jane Austen")
h = Book.new("Hamlet", " William Shakespeare")
wp = Book.new("War and Peace", "Leo Tolstoy")

hp = Book.new("Harry Potter", "J.K. Rowling")

hp.title # "Harry Potter"
hp.author # "J.K. Rowling"
hp.get_title # "Title: Harry Potter"
hp.get_author # "Author: J.K. Rowling"