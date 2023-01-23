require "secret_diary"

describe SecretDiary do
  context "initially" do
    it "raises the error 'Go away!'" do
      diary = double(:diary)
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context "given the diary is unlocked" do
    it "returns diary contents" do
      diary = double(:diary, read: "Dear diary")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Dear diary"
    end
  end

  context "given the diary is relocked" do
    it "raises the error 'Go away!'" do
      diary = double(:diary)
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end
