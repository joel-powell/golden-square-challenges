require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "correct password is provided" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "first and last characters of password are correct" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end

  it "wrong password provided" do
    result = check_codeword("joel")
    expect(result).to eq "WRONG!"
  end
end