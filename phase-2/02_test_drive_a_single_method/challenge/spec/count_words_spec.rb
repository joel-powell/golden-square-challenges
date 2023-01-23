require "count_words"

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
