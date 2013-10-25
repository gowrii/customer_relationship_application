class Contact
	def initialize (first_name, last_name, e_mail, notes)
		@first_name = first_name
		@last_name = last_name
		@e_mail	= e_mail
		@notes = notes
	end
	def display_values
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