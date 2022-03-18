require 'secret_diary'
require 'diary'

RSpec.describe "integration_secret" do
  context "initially" do
    it "does not read due to the diary being locked" do 
      diary = Diary.new("secret contents")
      secret_diary = SecretDiary.new(diary)
      expect{secret_diary.read}.to raise_error "Go away!"
    end
  end

  context "if it is  unlocked" do
    it "it reads the diary contents" do
      diary = Diary.new("secret contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "secret contents"
    end
  end

  context "if diary is locked again" do
    it "does not read the diary" do
      diary = Diary.new("secret contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end