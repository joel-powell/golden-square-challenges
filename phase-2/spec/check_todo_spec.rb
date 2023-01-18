require "check_todo"

describe "check_todo method" do
  context "given nil" do
    it "throws an error" do
      input = nil
      expect { check_todo(input) }.to raise_error "not a string"
    end
  end

  context "given an empty string" do
    it "returns false" do
      input = ""
      result = check_todo(input)
      expect(result).to be false
    end
  end

  context "given a string of '#TODO'" do
    it "returns true" do
      input = "#TODO"
      result = check_todo(input)
      expect(result).to be true
    end
  end

  context "given a string of 'TODO'" do
    it "returns false" do
      input = "TODO"
      result = check_todo(input)
      expect(result).to be false
    end
  end

  context "given a sentence beginning with '#TODO'" do
    it "returns true" do
      input = "#TODO go to shop"
      result = check_todo(input)
      expect(result).to be true
    end
  end

  context "given a string containing '#TODO'" do
    it "returns true" do
      input = "text before #TODO text after"
      result = check_todo(input)
      expect(result).to be true
    end
  end
end
