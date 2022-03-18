def check_todo(text)
  check = text.include?("@TODO")
  if check
    return true
  else
   return false
  end
end



# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.