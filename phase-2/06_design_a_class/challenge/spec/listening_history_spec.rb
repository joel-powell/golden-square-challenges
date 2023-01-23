require "listening_history"

describe ListeningHistory do
  describe "#list" do
    context "given no tracks have been added" do
      it "returns an empty array" do
        listening_history = ListeningHistory.new
        expect(listening_history.list).to eq []
      end
    end

    context "given 1 track has been added" do
      it "returns an array containing the added track" do
        listening_history = ListeningHistory.new
        listening_history.add("Track_1")
        expect(listening_history.list).to eq ["Track_1"]
      end
    end

    context "given 2 tracks have been added" do
      it "returns an array containing the added track" do
        listening_history = ListeningHistory.new
        listening_history.add("Track_1")
        listening_history.add("Track_2")
        expect(listening_history.list).to eq %w[Track_1 Track_2]
      end
    end
  end

  describe "#add" do
    context "given an empty string" do
      it "raises an error" do
        listening_history = ListeningHistory.new
        expect { listening_history.add("") }.to raise_error "Track name cannot be empty"
      end
    end
  end
end
