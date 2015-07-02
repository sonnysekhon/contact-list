## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase

#Read
  def self.get_raw_data
    output = []
    CSV.foreach('contacts.csv') do |row|
      output << row
    end
      output
  end

#Write
  def self.add_new(contact)
    database_file = CSV.open("contacts.csv","ab") do |file|
      file << contact.to_a
    end
  end

  def self.rewrite_csv(contacts)
    database_file = CSV.open("contacts.csv","wb") do |file|
      contacts.each do |contact|
        file << contact.to_a
      end
    end
  end  

end