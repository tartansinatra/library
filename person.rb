class Person
  attr_reader :name, :books

  def initialize(options = {})
    @name = options[:name]
    @books = {}
  end

  def pretty_string
    "'#{@name}' has #{@books.size} books borrowed at the moment."
  end

  def borrow(book)
    @books[book.title] = book    
  end

  def return_book(book_title, library)
    book = books.delete(book_title)
    library.add_book(book)
  end

  def list_borrowed_books
     if @books.empty? == false
      @books.each do |key, book|
        puts book.pretty_string
      end
    end
  end


end