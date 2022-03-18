class GrammarStats
  def initialize
    @count = 0
    @good = 0
  end

  def check(text)
    fail "Not a sentence." if text.empty?
    first_uppercase = text[0] == text[0].upcase
    last_char_is_punctuation = [".", "!", "?"].include? text[-1] 
      if first_uppercase && last_char_is_punctuation
        @good += 1
        @count += 1
        return true
      else
        @count += 1
        return false
      end
  end

  def percentage_good
    (@good / @count.to_f) * 100
  end
end