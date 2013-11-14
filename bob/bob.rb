class Bob
  def hey(message)
    if    message.blank?    then "Fine. Be that way."
    elsif message.all_caps? then "Woah, chill out!"
    elsif message.question? then "Sure."
    else                         "Whatever."
    end
  end
end

class NilClass
  def blank?
    true
  end
end

class String
  def blank?
    self == ""
  end

  def question?
    self[-1] == "?"
  end

  def all_caps?
    upcase == self
  end
end
