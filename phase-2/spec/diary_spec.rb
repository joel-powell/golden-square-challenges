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