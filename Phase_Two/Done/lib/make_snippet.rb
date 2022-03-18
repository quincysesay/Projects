def make_snippet(word)
  text = word.split(" ")
  if text.length <= 5
    return word
  else
    first_five_words = text[0,5].join(" ")
    return first_five_words + "..."
  end
end