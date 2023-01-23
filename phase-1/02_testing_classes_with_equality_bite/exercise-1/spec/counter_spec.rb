require "counter"

describe Counter do
  it "returns an initial value of 0" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "returns a single counted value" do
    counter = Counter.new
    counter.add(3)
    result = counter.report
    expect(result).to eq "Counted to 3 so far."
  end

  it "returns the correct count of multiple values" do
    counter = Counter.new
    counter.add(7)
    counter.add(31)
    counter.add(365)
    result = counter.report
    expect(result).to eq "Counted to 403 so far."
  end
end
