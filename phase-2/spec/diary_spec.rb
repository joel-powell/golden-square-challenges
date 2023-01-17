require 'diary'

RSpec.describe "make_snippet method" do
  context "When an empty string is passed to the method" do
    it "returns an empty string" do
      string = make_snippet("")
      expect(string).to eq ""
    end
  end

  context "When a string which is fewer than 5 words is passed" do
    it "returns the whole string" do
      string = make_snippet("hello my name chris")
      expect(string).to eq "hello my name chris"
    end
  end

  context "When a string is 6 words" do
    it "returns the first 5 words of the string and ... at the end" do
      string = make_snippet("hello my name is chris leech")
      expect(string).to eq "hello my name is chris..."
    end
  end

  context "When a string is 7 words" do
    it "returns the first 5 words of the string and ... at the end" do
      string = make_snippet("hello there my name is chris leech")
      expect(string).to eq "hello there my name is..."
    end
  end

  context "When a string is 1 word" do
    it "returns the string" do
      string = make_snippet("hello")
      expect(string).to eq "hello"
    end
  end
end

RSpec.describe "count_words method" do
  context "When a string is empty" do
    it "returns 0" do
      string = count_words("")
      expect(string).to eq 0
    end
  end

  context "When the string has 1 word" do
    it "returns 1" do
      string = count_words("hello")
      expect(string).to eq 1
    end
  end

  context "When the string has 2 words" do
    it "returns 2" do
      string = count_words("hello world")
      expect(string).to eq 2
    end
  end
end