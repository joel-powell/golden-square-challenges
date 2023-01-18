require "counter"

describe Counter do
  it "returns a counter that hasn't been added to" do
    count = Counter.new
    result = count.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "returns a counter equal to 3" do
    count = Counter.new
    count.add(1)
    count.add(2)
    result = count.report
    expect(result).to eq "Counted to 3 so far."
  end
end
