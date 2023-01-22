require "diary_entry"

describe DiaryEntry do
  context "initially" do
    title = "sample_title"
    contents = "james changed his phone number from 07399238917 to 07263927927"
    entry = DiaryEntry.new(title, contents)

    it "returns title" do
      expect(entry.title).to eq title
    end

    it "returns contents" do
      expect(entry.contents).to eq contents
    end

    it "returns word count" do
      expect(entry.word_count).to eq 9
    end

    it "returns phone numbers" do
      expect(entry.phone_numbers).to eq %w[07399238917 07263927927]
    end
  end
end
