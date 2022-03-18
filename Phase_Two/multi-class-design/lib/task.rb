class Task

  def initialize(title) # title is a string
    @title = title
    @complete = false
  end

  def title
    return @title # Returns the title as a string
  end

  def mark_complete
    @complete = true
    # Marks the task as complete
    # Returns nothing
  end

  def complete?
    return @complete # Returns true if marked completed , otherwise false
  end

end