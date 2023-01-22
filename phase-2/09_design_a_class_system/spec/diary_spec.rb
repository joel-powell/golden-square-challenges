require "diary"

describe Diary do
  context "initially" do
    describe "#all" do
      it "returns an empty array" do
        diary = Diary.new
        expect(diary.all).to eq []
      end
    end

    describe "#contacts" do
      it "returns an empty array" do
        diary = Diary.new
        expect(diary.contacts).to eq []
      end
    end

    describe "#longest_readable_entry" do
      it "returns nil" do
        diary = Diary.new
        expect(diary.longest_readable_entry(1, 1)).to eq nil
      end
    end
  end
end
