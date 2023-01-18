require "check_codeword"

describe "check_codeword method" do
  context "given the correct codeword" do
    it "returns a correct message" do
      input = "horse"
      result = check_codeword(input)
      expect(result).to eq "Correct! Come in."
    end
  end

  context "given a codeword where the first and last characters are correct" do
    it "returns a close message" do
      input = "house"
      result = check_codeword(input)
      expect(result).to eq "Close, but nope."
    end
  end

  context "given the wrong codeword" do
    it "returns a wrong message" do
      input = "joel"
      result = check_codeword(input)
      expect(result).to eq "WRONG!"
    end
  end
end
