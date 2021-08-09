class EmailAddressParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = @emails.split(/\s|, /)
    list_of_emails = []
    email_array.each do |email|
      if list_of_emails.include?(email)
      else 
        list_of_emails << email
      end
    end
    list_of_emails
  end
end
