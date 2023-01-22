require "diary"

describe Diary do
  context "initially" do
    describe "#all" do
      it "returns an empty array" do
        diary = Diary.new
        expect(diary.all).to eq []
      end
    end

    describe "#count_words" do
      it "returns 0" do
        diary = Diary.new
        expect(diary.count_words).to eq 0
      end
    end

    describe "#reading_time" do
      context "given a wpm of 0" do
        it "raises an error" do
          diary = Diary.new
          expect { diary.reading_time(0) }.to raise_error "Reading speed must be greater than 0"
        end
      end

      context "given a positive wpm" do
        it "returns 0" do
          diary = Diary.new
          expect(diary.reading_time(1)).to eq 0
        end
      end
    end

    describe "#find_best_entry_for_reading_time" do
      it "returns nil" do
        diary = Diary.new
        expect(diary.find_best_entry_for_reading_time(1, 1)).to eq nil
      end
    end
  end
end
