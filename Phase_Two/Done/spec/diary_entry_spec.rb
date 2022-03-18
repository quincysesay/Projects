require 'diary_entry'

RSpec.describe DiaryEntry do
  it "constructs" do 
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end 

  describe "#count_words" do
    it "returns the number of words in the contents " do
      diary_entry = DiaryEntry.new("my_title", "Hello there someone")
      expect(diary_entry.count_words).to eq 3
    end

    it "returns zero if contents is empty" do
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "#reading_time" do
    context "given a wpm of some decent number(200)" do
      it "return the rounded-off, number of minutes it takes to read the contents " do
        diary_entry = DiaryEntry.new("my_title", "Halo " * 550)
        expect(diary_entry.reading_time(220)).to eq 3
      end  
    end 

    context "given a words per minute as 0" do
      it "fails" do
        diary_entry = DiaryEntry.new("my_title", "Hello Hi Bye")
        expect{ diary_entry.reading_time(0) }.to raise_error "Reading speed cannot be 0."
      end
    end 
  end

  describe "#reading_chunk" do
    context "with a contents readable within the time" do
      it "returns the full contents" do
        diary_entry = DiaryEntry.new("my_title", "Hello Hi Bye")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "Hello Hi Bye"
      end
    end

    context "given a words per minute as 0" do
      it "fails" do
        diary_entry = DiaryEntry.new("my_title", "Hello Hi Bye")
        expect{ diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed cannot be 0."
      end
    end 

    context "with a contents unreadable within the given time" do
      it "returns the readable chunk" do
        diary_entry = DiaryEntry.new("my_title", "Hello Hi Bye")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "Hello Hi"
      end

      it "returns the next chunk, next time we are asked " do
        diary_entry = DiaryEntry.new("my_title", "Hello Hi Bye")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "Bye"
      end

      it "restarts after reading the whole contents " do
        diary_entry = DiaryEntry.new("my_title", "Hello Hi Bye")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "Hello Hi"
      end

      it "restarts if it finishes exactly at the end " do
        diary_entry = DiaryEntry.new("my_title", "Hello Hi Bye")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(1, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "Hello Hi"
      end
    end
  end 
end
