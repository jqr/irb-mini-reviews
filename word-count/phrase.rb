require "active_support/all"

class Phrase
  def initialize(text)
    @text = text
  end

  def word_count
    Hash[@text.split(/\W+/).group_by(&:downcase).map { |k, v| [k, v.size] }]
  end
end
