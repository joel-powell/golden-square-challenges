require 'present'

RSpec.describe Present do
  it "wraps and unwraps presents" do
    presents = Present.new
    presents.wrap(4)
    expect(presents.unwrap).to eq 4
  end

  it "presents already wrapped" do
    presents = Present.new
    presents.wrap(4)
    expect { presents.wrap(3) }.to raise_error "All contents have already been wrapped."
  end

  it "presents unwrapped without being wrapped" do
    presents = Present.new
    expect { presents.unwrap }.to raise_error "No contents have been wrapped."
  end
end