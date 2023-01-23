require "make_snippet"

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
