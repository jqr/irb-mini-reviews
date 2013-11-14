class Bob
  def initialize
    # Bob proxy... he's no Bob, but he's pretty damn close.
    @bob_proxy = Hash.new do |h, k|
      if    k.blank?    then "Fine. Be that way."
      elsif k.all_caps? then "Woah, chill out!"
      elsif k.question? then "Sure."
      else                   "Whatever."
      end
    end
  end

  def hey(message)
    what_would_bob_say?(message)
  end

  def what_would_bob_say?(message)
    @bob_proxy[message]
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
