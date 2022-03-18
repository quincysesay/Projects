require 'diary_entry'

RSpec.describe DiaryEntry do
  it 'constructs' do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  describe "@count_words" do
    it "returns zero if contents it empty" do
      diary_entry = DiaryEntry.new("my title", "")
      expect(diary_entry.count_words).to eq 0
    end
    
    it "returns 1 if contents is one word" do
      diary_entry = DiaryEntry.new("my title", "hello")
      expect(diary_entry.count_words).to eq 1
    end

    it "counts the words in the diary entry contents" do
      diary_entry = DiaryEntry.new("my title", "hi hello bye now")
      expect(diary_entry.count_words).to eq 4
    end
  end

  describe "@reading_time" do 
    it "fails if the wpm is 0" do
      diary_entry = DiaryEntry.new("my title", "hello")
      expect {diary_entry.reading_time(0)}.to raise_error "WPM cannot be 0."
    end

    it "returns zero if contents it empty" do
      diary_entry = DiaryEntry.new("my title", "")
      expect(diary_entry.reading_time(2)).to eq 0
    end
    
    it "returns 1 if contents is one word" do
      diary_entry = DiaryEntry.new("my title", "hello")
      expect(diary_entry.reading_time(2)).to eq 1
    end

    it "returns a reading time for the contents" do
      diary_entry = DiaryEntry.new("my title", "hi hello bye now here")
      expect(diary_entry.reading_time(2)).to eq 3
    end
  end
end