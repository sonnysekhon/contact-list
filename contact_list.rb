require_relative 'contact'
require_relative 'contact_database'

# TODO: Implement command line interaction
# This should be the only file where you use puts and gets

# jordan = Contact.create("Jordan Zhang", "teddybear@gmail.com")
# joey = Contact.create("joey", "joey.byrne@gmail.com")
# siv = Contact.create("Siv Padhy", "siv@gmail.com")

case ARGV[0] 

when 'help'
  puts "Here is a list of available commands:"
  puts "new  - Create a new contact"
  puts "list - List all contacts"
  puts "show - Show a contact"
  puts "find - Find a contact"

when 'new'
  puts "Enter a name"
  name = STDIN.gets.chomp.to_s
  puts "Enter an email"
  email = STDIN.gets.chomp.to_s
  Contact.create(name,email)
  puts "Contact created!"

when 'list'
  puts "List all contacts"
  Contact.all

when 'show'
  id = ARGV[1].to_i
  puts Contact.show(id)

when 'find'
  term = ARGV[1]
  puts Contact.find(term)

else
  puts "I don't understand."

end