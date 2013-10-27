

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
    @contacts.each do |contact|
      if customer_input == (contact.first_name || contact.last_name || contact.e_mail || contact.notes)
          puts "#{contact.first_name} #{contact.last_name}"
          puts "#{contact.e_mail}"
          puts "#{contact.notes}"
      else
        "empty"
      end
      end
      puts "Is this the contact you want to edit Y/N?"
      answer = gets.chomp
      if answer = "Y".capitalize
      else
      exit 
      end
    @contacts.each do |contact|
      if customer_input == (contact.first_name || contact.last_name || contact.e_mail || contact.notes)
        @contacts.delete(contact)
      end
      self.updating_contact
    end
    
  end
  
  def self.updating_contact
    print "What is your first name: "
    first_name = gets.chomp
    print "What is your last name: "
    last_name = gets.chomp
    print "What is your e-mail address: "
    e_mail = gets.chomp
    print "Add a note: "
    notes = gets.chomp
    puts "-------------------------------------------"
    contact = Contact.new(first_name, last_name, e_mail, notes)
    Rolodex.adding_contact(contact)
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
        puts "no matches found"
    end
  end
  

  def self.delete_contact
    customer_input = gets.chomp
    case customer_input
    when 
      @contacts.each { |contact| puts contact.display_values if customer_input == (contact.first_name || contact.last_name || contact.e_mail || contact.notes)}
      @contacts.delete(contact)
      puts "Contact deleted"
      else
        puts "That name doesn't exist!"
      
    end
  
  end
end



