class DiaryEntry
  def initialize(title, contents )# title, contents are both strings
    @title = title
    @contents = contents
  end

  def title
    return @title # Returns the title as a string
  end

  def contents
    return @contents # Returns the contents as a string
  end
end

# for the above, a short way of contrusting the class
# (as its a straight-forward one)
# its : (1) DiaryEntry = Struct.new(:title, :contents)
#       (2) class DiaryEntry < Struct.new(:title, :contents)
#             end

# P.S The last example is handy for being able to add methods to it
