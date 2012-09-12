class EmailScanner
  def scan_for_email(text)
    email_regex = /("(.*)"\s.\b(mailto:)*)*([\w._%+-]+@[\w.-]+\.[a-z]{2,4})\b./i
    text.scan(email_regex)
  end

  def get_name_and_email(text)
    scan_for_email(text).map do |person|
      { :name => person[1], :email => person.last }
    end
  end
end