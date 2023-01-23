require "music_library"
require "track"

describe "integration" do
  context "given multiple added tracks" do
    it "returns a list of track objects" do
      music_library = MusicLibrary.new
      track_1 = Track.new("title1", "artist1")
      track_2 = Track.new("title2", "artist2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1, track_2]
    end

    it "returns a list of tracks where the title or artist matches the keyword" do
      music_library = MusicLibrary.new
      track_1 = Track.new("this matches", "artist1")
      track_2 = Track.new("song2", "it's a match")
      track_3 = Track.new("song3", "artist3")
      music_library.add(track_1)
      music_library.add(track_2)
      music_library.add(track_3)
      expect(music_library.search("match")).to eq [track_1, track_2]
    end
  end
end
