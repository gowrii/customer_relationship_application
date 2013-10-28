

class Rolodex #just for dev

  @contacts = []
  @id = 1000

  def self.adding_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1

  end
  def self.contacts
  @contacts 
  end 

  def self.contacts=(contacts)
    @contacts = contacts
  end





  def self.modify_contact
  customer_input = gets.chomp
  @contacts.each { |contact| puts contact.display_values if customer_input == (contact.first_name || contact.last_name || contact.e_mail || contact.notes)}
  @contacts.each {|contact| @contacts.delete(contact) if customer_input == (contact.first_name || contact.last_name || contact.e_mail || contact.notes)}
  #puts "Do you want to change contact? yes/no"
  #answer = gets.chomp
  #if answer == 'yes'
    puts "Enter new first name"
      first_name = gets.chomp
    puts "Enter new last name"
      last_name = gets.chomp
    puts "Enter new e-mail"
      e_mail = gets.chomp
    puts "Enter new note"
      notes = gets.chomp
    contact = Contact.new(first_name, last_name, e_mail, notes)
    Rolodex.adding_contact(contact)
  
  #end

  
  




  end
 







  def self.display_all_contact
      @contacts.each do |contact| contact.display_values
    end
  end

  def self.display_info_by_attribute # else statement shows up twice, at beginning and end
    customer_input = gets.chomp
    case customer_input
    when 
      @contacts.each { |contact| puts contact.display_values if customer_input == (contact.first_name || contact.last_name || contact.e_mail || contact.notes)}
      else 
        puts "Sorry no matches found!"
    end
  end
  

  def self.delete_contact ()
    customer_input = gets.chomp
    case customer_input
    when 
      @contacts.each do |contact| @contacts.delete(contact) if customer_input == (contact.first_name || contact.last_name || contact.e_mail || contact.notes)
      puts "Your contact #{contact.first_name} #{contact.last_name} has been deleted"
      puts "Returning to main menu"
      puts " "
      end
    end
  end
end



