require "diary"

describe Diary do
  it "returns diary contents" do
    diary = Diary.new("Dear diary")
    expect(diary.read).to eq "Dear diary"
  end
end
