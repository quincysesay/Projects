# def check_grammar(text)
#   fail "Not a sentence." if text.empty?
#   first_uppercase = text[0] == text[0].upcase
#   last_char_is_punctuation = [".", "!", "?"].include? text[-1] 
#   if first_uppercase && last_char_is_punctuation
#     return true
#   else
#     return false
#   end
# end