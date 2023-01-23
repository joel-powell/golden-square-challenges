require "track"

describe Track do
  context "given a matching keyword in the title" do
    it "returns true" do
      track = Track.new("this matches", "artist1")
      expect(track.matches?("match")).to be true
    end
  end

  context "given a matching keyword in the artist" do
    it "returns true" do
      track = Track.new("song2", "it's a match")
      expect(track.matches?("match")).to be true
    end
  end

  context "given a matching keyword in the title and artist" do
    it "returns true" do
      track = Track.new("this matches", "it's a match")
      expect(track.matches?("match")).to be true
    end
  end

  context "given no match" do
    it "returns false" do
      track = Track.new("nothing here", "not the same")
      expect(track.matches?("match")).to be false
    end
  end
end
