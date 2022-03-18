require 'secret_diary'

RSpec.describe "" do
  context "initially" do
    it "does not read due to the diary being locked" do 
      diary = double :diary
      secret_diary = SecretDiary.new(diary)
      expect{secret_diary.read}.to raise_error "Go away!"
    end
  end

  context "if it is  unlocked" do
    it "it reads the diary contents" do
      diary = double :diary, read: "fake secret contents"
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "fake secret contents"
    end
  end

  context "its relocked" do
    it "does not read the diary as its locked again" do
      diary = double :diary
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect{secret_diary.read}.to raise_error "Go away!"
    end
  end
end