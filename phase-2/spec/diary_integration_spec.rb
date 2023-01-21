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

    describe "#count_words" do
      it "returns the number of words in all diary entries" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("title_1", "some contents")
        entry_2 = DiaryEntry.new("title_2", "some more contents")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.count_words).to eq 5
      end
    end

    describe "#reading_time" do
      it "returns an integer representing an estimate of how long it would take to read all entries in minutes" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("title_1", "some contents")
        entry_2 = DiaryEntry.new("title_2", "some more contents")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.reading_time(1)).to eq 5
      end
    end

    describe "find_best_entry_for_reading_time" do
      context "given the reading speed and time available" do
        it "returns the longest entry readable" do
          diary = Diary.new
          entry_1 = DiaryEntry.new("title_1", "some contents")
          entry_2 = DiaryEntry.new("title_2", "some more contents")
          entry_3 = DiaryEntry.new("title_3", "even more contents than before")
          diary.add(entry_1)
          diary.add(entry_2)
          diary.add(entry_3)
          expect(diary.find_best_entry_for_reading_time(1, 4)).to eq entry_2
        end
      end
    end
  end
end
