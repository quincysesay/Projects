class DiaryEntry
  def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @last_word_read = 0
  end

  def title
    return @title # Returns the title as a string
  end

  def contents
    return @contents 
  end

  def count_words
    @contents.split(" ").length
    # return words.length 
  end

  def reading_time(wpm)
    fail "Reading speed cannot be 0." unless wpm > 0
    (count_words/wpm.to_f).ceil #ceil is to round-up (eg. 2.75 => 3)
  end

  def reading_chunk(wpm, minutes) 
    #@contents.split(" ").length
    fail "Reading speed cannot be 0." unless wpm > 0
    no_words_we_can_read = wpm * minutes
    begin_from = @last_word_read
    finish_at = @last_word_read + no_words_we_can_read
    word_list = words[begin_from, finish_at]
    if finish_at >= count_words
      @last_word_read = 0
    else
      @last_word_read = finish_at
    end
    return word_list.join(" ")
  end


    
  private
    # Priavte - create a mehtod thats not accessed outside the class.
    def words
      return @contents.split(" ")
    end    
  
end