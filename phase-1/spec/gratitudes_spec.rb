require "gratitudes"

describe Gratitudes do
  it "returns no gratitudes" do
    gratitudes = Gratitudes.new
    result = gratitudes.format
    expect(result).to eq "Be grateful for: "
  end

  it "returns a single gratitude" do
    gratitudes = Gratitudes.new
    gratitudes.add("food")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: food"
  end

  it "returns two gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("food")
    gratitudes.add("water")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: food, water"
  end
end
