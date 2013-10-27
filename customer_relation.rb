require_relative "contact"
require_relative "rolodex"

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
    puts "[4] Search using attributes"
    puts "[5] Delete contact"
    puts "[6] Thanks alot bye!"
    print "Enter a number: "
    
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
    puts "-------------------------------------------"
    contact = Contact.new(first_name, last_name, e_mail, notes)
      Rolodex.adding_contact(contact)
      end
  
  def change_contact
    print "Which contact do you want to change: "
    Rolodex.modify_contact
    
  end

  def display_contact
    Rolodex.display_all_contact

  end

  def display_attributes
    print "Type in a search for your contact: " 
    Rolodex.display_info_by_attribute 
  end


  def delete
    print "Which contact do you want to delete: "
    Rolodex.delete_contact
  end

end


my_crm = CRM.new("my CRM")
my_crm.main_menu
