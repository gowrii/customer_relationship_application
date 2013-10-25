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
    
  end

  def self.display_all_contact
      @contacts.each do |contact| 
      puts "#{contact.first_name} #{contact.last_name}"
      puts "#{contact.e_mail}"
      puts "#{contact.notes}"
    end
  end

  def self.display_info_by_attribute
    customer_input = gets.chomp
    @contacts.each do |contact|
      if contact.first_name == customer_input
        puts "#{contact.first_name} #{contact.last_name}"
        puts "#{contact.e_mail}"
        puts "#{contact.notes}"
      elsif contact.last_name == customer_input
        puts "#{contact.first_name} #{contact.last_name}"
        puts "#{contact.e_mail}"
        puts "#{contact.notes}"
      elsif contact.e_mail == customer_input
        puts "#{contact.first_name} #{contact.last_name}"
        puts "#{contact.e_mail}"
        puts "#{contact.notes}"
      elsif contact.notes == customer_input
        puts "#{contact.first_name} #{contact.last_name}"
        puts "#{contact.e_mail}"
        puts "#{contact.notes}"
      else puts "That contact does not exist"
      end
    end
  end
  

  def self.delete_contact
  end
    
end