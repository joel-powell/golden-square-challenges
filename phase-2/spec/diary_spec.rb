require "diary"

describe "make_snippet method" do
  context "given an empty string" do
    it "returns an empty string" do
      input = ""
      result = make_snippet(input)
      expect(result).to eq ""
    end
  end

  context "given a string of fewer than 5 words" do
    it "returns the whole string" do
      input = "hello my name chris"
      result = make_snippet(input)
      expect(result).to eq "hello my name chris"
    end
  end

  context "given a string of 6 words" do
    it "returns the first 5 words of the string with an ellipsis at the end" do
      input = "hello my name is chris leech"
      result = make_snippet(input)
      expect(result).to eq "hello my name is chris..."
    end
  end

  context "given a string of 7 words" do
    it "returns the first 5 words of the string with an ellipsis at the end" do
      input = "hello there my name is chris leech"
      result = make_snippet(input)
      expect(result).to eq "hello there my name is..."
    end
  end

  context "given a string of 1 word" do
    it "returns the string" do
      input = "hello"
      result = make_snippet(input)
      expect(result).to eq "hello"
    end
  end
end

describe "count_words method" do
  context "given an empty string" do
    it "returns 0" do
      input = ""
      result = count_words(input)
      expect(result).to eq 0
    end
  end

  context "given a string of 1 word" do
    it "returns 1" do
      input = "hello"
      result = count_words(input)
      expect(result).to eq 1
    end
  end

  context "given a string of 2 words" do
    it "returns 2" do
      input = "hello world"
      result = count_words(input)
      expect(result).to eq 2
    end
  end
end
