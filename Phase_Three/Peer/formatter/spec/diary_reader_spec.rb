require 'diary_reader'

RSpec.describe DiaryEntryFormatter do
    it "formats diary entry" do
      diary_entry = double :diary_entry, title: "Fake Title", contents: "Fake Contents"
      diary_format = DiaryEntryFormatter.new(diary_entry)
      expect(diary_format.format).to eq "Fake Title: Fake Contents"
    end
end