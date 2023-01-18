require "reading_time"

describe "calculate_reading_time method" do
  context "given an empty string" do
    it "returns 0" do
      input = ""
      result = calculate_reading_time(input)
      expect(result).to eq 0
    end
  end

  context "given a string containing 1 word" do
    it "returns 1" do
      input = "hello"
      result = calculate_reading_time(input)
      expect(result).to eq 1
    end
  end

  context "given a string containing 200 words" do
    it "returns 1" do
      input = "hello " * 200
      result = calculate_reading_time(input)
      expect(result).to eq 1
    end
  end

  context "given a string containing 201 words" do
    it "returns 2" do
      input = "hello " * 201
      result = calculate_reading_time(input)
      expect(result).to eq 2
    end
  end

  context "given a string containing 950 words" do
    it "returns 5" do
      input = "hello " * 950
      result = calculate_reading_time(input)
      expect(result).to eq 5
    end
  end
end
