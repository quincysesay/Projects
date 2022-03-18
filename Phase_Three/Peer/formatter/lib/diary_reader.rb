class DiaryEntryFormatter
  def initialize(diary_entry) # diary_entry is an instance of DiaryEntry
    @diary_entry = diary_entry
  end

  def format
    return "#{@diary_entry.title}: #{@diary_entry.contents}"
    # Returns a nicely formatted diary entry
  end
end