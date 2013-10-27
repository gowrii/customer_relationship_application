
class Contact
  attr_accessor :first_name, :last_name, :e_mail, :notes, :id
  def initialize (first_name, last_name, e_mail, notes)
    @first_name = first_name
    @last_name = last_name
    @e_mail = e_mail
    @notes = notes
  end
  def display_values
  	  puts "#{@first_name} #{@last_name}"
      puts "#{@e_mail}"
      puts "#{@notes}"
      puts "-------------------------------------------"
  end
end