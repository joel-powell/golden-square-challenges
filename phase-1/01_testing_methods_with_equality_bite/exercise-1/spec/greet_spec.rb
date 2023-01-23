require "greet"

describe "greet method" do
  it "greets someone" do
    input = "Chris"
    result = greet(input)
    expect(result).to eq "Hello, Chris!"
  end
end
