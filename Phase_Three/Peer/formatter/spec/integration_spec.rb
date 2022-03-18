require 'diary_entry'
require 'diary_reader'

RSpec.describe "integration" do
 it "formats diary entry" do
    diary_entry = DiaryEntry.new("title", "contents")
    diary_format = DiaryEntryFormatter.new(diary_entry)
    expect(diary_format.format).to eq "title: contents"
  end
end