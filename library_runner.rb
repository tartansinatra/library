require 'pry-byebug'
require_relative './library'
require_relative './book'
require_relative './person'


#TODO: create library
library = Library.new 'Code Clan Library'


#TODO: create book
book_1 = Book.new({title: 'Bible', genre: 'Religious'})
book_2 = Book.new({title: 'Qu\'ran', genre: 'Religious'})

library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))


library.add_book(book_1)
library.add_book(book_2)

#TODO: list books
puts "All books \n #{library.list_books}"


#TODO: create person
person_1 = Person.new({name: "Jane"})

library.add_person(person_1)

wilma = 
library.add_person(Person.new(name: 'Fred'))
library.add_person(Person.new(name: 'Wilma'))
library.add_person(Person.new(name: 'Barney'))
library.add_person(Person.new(name: 'Betty'))

#TODO: list people
puts "All people \n #{library.list_people}"


#TODO: lend book



# Example - 
person_name = "Wilma"
book_title = "The Hobbit"

library.lend(person_name, book_title)
puts
puts "#{person_name} has borrowed #{book_title}"
puts

person_name = "Fred"
book_title = "To Kill a Mockingbird"
library.lend(person_name, book_title)

#TODO: list people
puts "All people: \n #{library.list_people}"


#TODO: return book
# wilma = library.get_person("Wilma")
# wilma.return_book("The Hobbit", library)

# puts 
# puts "People Status: All people:\n #{library.list_people}"
# puts

#TODO: list borrowed books
puts

puts "Books on Loan: All books:\n"
# binding.pry;""
library.list_borrowed_books



puts




#TODO: List Overdue Books

#TODO: 

