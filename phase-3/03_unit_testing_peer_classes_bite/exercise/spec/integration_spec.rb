require "secret_diary"
require "diary"

describe "integration" do
  context "given the diary is locked" do
    it "raises the error 'Go away!'" do
      diary = Diary.new("Dear diary")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context "given the diary is unlocked" do
    it "returns diary contents" do
      diary = Diary.new("Dear diary")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Dear diary"
    end
  end

  context "given the diary is relocked" do
    it "raises the error 'Go away!'" do
      diary = Diary.new("Dear diary")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end
