require 'diary'
require 'diaryEntry'

RSpec.describe 'integration' do
  context "when do user enters an entry to the diary" do
    it "it comes back in a list" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my title", "my content")
      entry_2 = DiaryEntry.new("my title two", "my content two")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.entries).to eq [entry_1, entry_2]
    end
  end

  context "reading based on time and reading speed" do
    xit "returns an exact chunk for a given reading time and speed" do
      diary = Diary.new
      reader = DiaryReader.new(2, diary)
      enrty_1 = DiaryEntry.new("my title 1", "one ")
      enrty_2 = DiaryEntry.new("my title 2", "one two")
      enrty_3 = DiaryEntry.new("my title 3", "one two three")
      enrty_4 = DiaryEntry.new("my title 4", "one two three four")
      diary.add(entry_1)
      diary.add(entry_2)
      diary.add(entry_3)
      diary.add(entry_4)
      expect(reader.find_readable(2)).to eq entry_4
    end

    xit "returns the nearest chunk for a given reading time and speed" do
      diary = Diary.new
      reader = DiaryReader.new(2, diary)
      enrty_1 = DiaryEntry.new("my title 1", "one ")
      enrty_2 = DiaryEntry.new("my title 2", "one two")
      enrty_3 = DiaryEntry.new("my title 3", "one two three")
      enrty_4 = DiaryEntry.new("my title 4", "one two three four five")
      diary.add(entry_1)
      diary.add(entry_2)
      diary.add(entry_3)
      diary.add(entry_4)
      expect(reader.find_readable(2)).to eq entry_3
    end

    xit "returns nil when not readable in given time and speed" do
      diary = Diary.new
      reader = DiaryReader.new(2, diary)
      enrty_4 = DiaryEntry.new("my title 4", "one two three four")
      diary.add(entry_4)
      expect(reader.find_readable(2)).to eq nil
    end

    xit "returns nil for sero entries" do
      diary = Diary.new
      reader = DiaryReader.new(2, diary)
      expect(reader.find_readable(2)).to eq nil
    end
  end
end