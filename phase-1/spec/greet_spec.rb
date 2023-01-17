require 'greet'

RSpec.describe "greet method" do
  it "greets someone" do
    result = greet("Chris")
    expect(result).to eq "Hello, Chris!"
  end
end