class Library
  attr_reader :name, :books, :people

  def initialize(name)
    @name = name
    @books = {}
    @people = {}
  end

  def add_book(book)
    @books[book.title] = book
  end

  def list_books
    if @books.empty?
      "There are no books in the library at present."
    else 
      book_strings = @books.map do  |key, book|
        book.pretty_string
      end
    end
      book_strings.join("\n")  
  end

  def add_person(person)
    @people[person.name] = person
  end

  def list_people
    if @people.empty?
      "no people here"
    else
      people_string = @people.map do |key, person|
        person.pretty_string
      end
      people_string.join("\n")
    end
  end

  def lend(person_name, book_title)
    person = @people[person_name]
    book = @books.delete(book_title)
    person.borrow(book)
  end

  def get_person(person_name)
    person = @people[person_name] 
  end

  def list_borrowed_books
      @people.each do |name, person| 
       person.list_borrowed_books
      puts
    end
  end


end