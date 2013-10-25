class CRM
  attr_accessor :name, :email, :first_name, :last_name, :notes
  def initialize(name)
    self.name= name
  end

 def main_menu
  while 1
    print_main_menu
    choices = gets.to_i
    choices_on_menu(choices)
  end
  end

  def print_main_menu
    puts "Welcome, choose one of the following"
    puts "[1] Add a new contact"
    puts "[2] Change a contact"
    puts "[3] Display all contacts"
    puts "[4] Display attributes"
    puts "[5] Delete contact"
    puts "[6] Thanks alot bye!"
    puts "Enter a number"
  end

  def choices_on_menu (choices)
    case choices
    when 1 
      add_contact
    when 2
      change_contact
    when 3
      display_contact
    when 4
      display_attributes
    when 5
      delete
    when 6
      exit
    end
  end

  def add_contact
    print "What is your first name: "
    first_name = gets.chomp
    print "What is your last name: "
    last_name = gets.chomp
    print "What is your e-mail address: "
    e_mail = gets.chomp
    print "Add a note: "
    notes = gets.chomp
    contact = Contact.new(first_name, last_name, e_mail, notes)
      Rolodex.adding_contact(contact)
      
      end
  
  def change_contact
    puts "Which contact do you want to change: "
    
  end

  def display_contact
    Rolodex.display_all_contact

  end

  def display_attributes
    puts "Type in a search for your contact: "
    
    Rolodex.display_info_by_attribute 
  end


  def delete
    print "Which contact do you want to delete: "

  end

end

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


class Contact
  attr_accessor :first_name, :last_name, :e_mail, :notes, :id
  def initialize (first_name, last_name, e_mail, notes)
    @first_name = first_name
    @last_name = last_name
    @e_mail = e_mail
    @notes = notes
  end
  def display_values
  end
end

my_crm = CRM.new("my CRM")
my_crm.main_menu
test = Contact.new("Gowri", "Namb", "ksjfa@blah", "note")

