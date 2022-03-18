class DiaryEntry
  def initialize(title, contents) # both are strings
    @title = title
    @content = contents
  end

  def title
    return @title #returns title as a string
  end

  def contents
    return @content #returns contents as a string
  end
end