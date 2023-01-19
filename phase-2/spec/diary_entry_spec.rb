require "diary_entry"

describe DiaryEntry do
  it "initialises" do
    title = "sample_title"
    contents = "sample_contents"
    diary_entry = DiaryEntry.new(title, contents)
    expect(diary_entry.title).to eq "sample_title"
    expect(diary_entry.contents).to eq "sample_contents"
  end

  describe "#count_words" do
    it "returns the word count of present contents" do
      title = "sample_title"
      contents = "this is a sample diary entry"
      diary_entry = DiaryEntry.new(title, contents)
      result = diary_entry.count_words
      expect(result).to eq 6
    end

    it "returns 0 when contents are empty" do
      title = "sample_title"
      contents = ""
      diary_entry = DiaryEntry.new(title, contents)
      result = diary_entry.count_words
      expect(result).to eq 0
    end
  end

  describe "#reading_time" do
    context "given a wpm of 200" do
      it "returns an estimated reading time of the contents" do
        title = "sample_title"
        contents = "word " * 901
        diary_entry = DiaryEntry.new(title, contents)
        result = diary_entry.reading_time(200)
        expect(result).to eq 5
      end
    end

    context "given a wpm of 0" do
      it "raises an error" do
        title = "sample_title"
        contents = "word"
        diary_entry = DiaryEntry.new(title, contents)
        expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be greater than 0"
      end
    end
  end

  describe "#reading_chunk" do
    context "given a wpm of 0" do
      it "raises an error" do
        title = "sample_title"
        contents = "word"
        diary_entry = DiaryEntry.new(title, contents)
        expect { diary_entry.reading_chunk(0, 1) }.to raise_error "Reading speed must be greater than 0"
      end
    end

    context "given a contents readable within the time" do
      it "returns the full contents" do
        title = "sample_title"
        contents = "these are some words"
        diary_entry = DiaryEntry.new(title, contents)
        result = diary_entry.reading_chunk(5, 1)
        expect(result).to eq contents
      end
    end

    context "given a contents not readable within the time" do
      it "returns a chunk of the contents" do
        title = "sample_title"
        contents = "these are some words"
        diary_entry = DiaryEntry.new(title, contents)
        result = diary_entry.reading_chunk(3, 1)
        expect(result).to eq "these are some"
      end

      it "returns two consecutive chunks" do
        title = "sample_title"
        contents = "these are some words"
        diary_entry = DiaryEntry.new(title, contents)
        expect(diary_entry.reading_chunk(3, 1)).to eq "these are some"
        expect(diary_entry.reading_chunk(3, 1)).to eq "words"
      end

      it "returns three consecutive chunks" do
        title = "sample_title"
        contents = "this is a longer sentence to read through"
        diary_entry = DiaryEntry.new(title, contents)
        expect(diary_entry.reading_chunk(3, 1)).to eq "this is a"
        expect(diary_entry.reading_chunk(3, 1)).to eq "longer sentence to"
        expect(diary_entry.reading_chunk(3, 1)).to eq "read through"
      end

      it "restarts after finishing reading" do
        title = "sample_title"
        contents = "these are some words"
        diary_entry = DiaryEntry.new(title, contents)
        expect(diary_entry.reading_chunk(3, 1)).to eq "these are some"
        expect(diary_entry.reading_chunk(3, 1)).to eq "words"
        expect(diary_entry.reading_chunk(3, 1)).to eq "these are some"
      end

      it "restarts after finishing exactly at end" do
        title = "sample_title"
        contents = "these are some words"
        diary_entry = DiaryEntry.new(title, contents)
        expect(diary_entry.reading_chunk(2, 1)).to eq "these are"
        expect(diary_entry.reading_chunk(2, 1)).to eq "some words"
        expect(diary_entry.reading_chunk(2, 1)).to eq "these are"
      end
    end
  end
end
