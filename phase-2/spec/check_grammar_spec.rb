require "check_grammar"

describe "check_grammar method" do
  context "given an empty string" do
    it "throws an error" do
      input = ""
      expect { check_grammar(input) }.to raise_error "Not a sentence"
    end
  end

  context "given nil" do
    it "throws an error" do
      input = nil
      expect { check_grammar(input) }.to raise_error "Not a sentence"
    end
  end

  context "given a string containing 1 lowercase word" do
    it "returns false" do
      input = "hello"
      result = check_grammar(input)
      expect(result).to be false
    end
  end

  context "given a string containing 1 capitalised word and a full-stop" do
    it "returns true" do
      input = "Hello."
      result = check_grammar(input)
      expect(result).to be true
    end
  end

  context "given a capitalised two word sentence with an exclamation" do
    it "returns true" do
      input = "Hello world!"
      result = check_grammar(input)
      expect(result).to be true
    end
  end

  context "given a lowercase sentence with a full-stop" do
    it "returns false" do
      input = "this is a lowercase sentence."
      result = check_grammar(input)
      expect(result).to be false
    end
  end

  context "given a question" do
    it "returns true" do
      input = "This is a question?"
      result = check_grammar(input)
      expect(result).to be true
    end
  end
end
