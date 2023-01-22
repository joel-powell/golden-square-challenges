require "diary"
require "diary_entry"

describe "integration" do
  context "given multiple entries added" do
    it "returns a list of instances of DiaryEntry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "contents_1")
      entry_2 = DiaryEntry.new("title_2", "contents_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.all).to eq [entry_1, entry_2]
    end

    it "returns unique contacts" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "bob's phone number is 07245382629")
      entry_2 = DiaryEntry.new("title_2", "james changed his phone number from 07399238917 to 07263927927")
      entry_3 = DiaryEntry.new("title_3", "remember to call bob (07245382629) tomorrow")
      diary.add(entry_1)
      diary.add(entry_2)
      diary.add(entry_3)
      expect(diary.contacts).to eq %w[07245382629 07399238917 07263927927]
    end

    it "returns longest readable entry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "some contents")
      entry_2 = DiaryEntry.new("title_2", "some more contents")
      entry_3 = DiaryEntry.new("title_3", "even more contents than before")
      diary.add(entry_1)
      diary.add(entry_2)
      diary.add(entry_3)
      expect(diary.longest_readable_entry(1, 4)).to eq entry_2
    end
  end
end
