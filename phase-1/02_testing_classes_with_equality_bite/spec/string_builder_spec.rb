require "string_builder"

describe StringBuilder do
  it "returns an empty string" do
    string = StringBuilder.new
    result = string.output
    expect(result).to eq ""
  end

  it "returns length of empty string" do
    string = StringBuilder.new
    result = string.size
    expect(result).to eq 0
  end

  it "returns the given string" do
    string = StringBuilder.new
    string.add("hello")
    result = string.output
    expect(result).to eq "hello"
  end

  it "returns two combined strings" do
    string = StringBuilder.new
    string.add("hello")
    string.add("world")
    result = string.output
    expect(result).to eq "helloworld"
  end

  it "returns length of given string" do
    string = StringBuilder.new
    string.add("hello")
    result = string.size
    expect(result).to eq 5
  end
end
