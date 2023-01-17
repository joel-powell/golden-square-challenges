require 'present'

RSpec.describe Present do
  context "The presents are wrapped and unwrapped" do
    it "passes" do
      presents = Present.new
      presents.wrap(4)
      expect(presents.unwrap).to eq 4
    end
  end
  context "The presents are already wrapped" do
    it "fails" do
      presents = Present.new
      presents.wrap(4)
      expect { presents.wrap(3) }.to raise_error "All contents have already been wrapped."
    end
  end
  context "The presents are unwrapped without being wrapped first" do
    it "presents unwrapped without being wrapped" do
      presents = Present.new
      expect { presents.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end