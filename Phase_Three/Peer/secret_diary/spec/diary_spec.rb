require 'diary'

RSpec.describe Diary do
  it "initializes and reads " do
    diary = Diary.new("secret contents")
    expect(diary.read).to eq "secret contents"
  end
end