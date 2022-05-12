
class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title # @title -> title attribute 
        @author = author
        @pages = pages
     end
end

book1 = Book.new("Harry Potter", "JK Rowling", 400)
book2 = Book.new("Lord of the Ring", "Tolkein", 500)

puts book2.title