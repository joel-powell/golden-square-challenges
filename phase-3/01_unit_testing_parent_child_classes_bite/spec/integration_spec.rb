require 'music_library'
require 'track'

describe "Music - Track integration" do
  describe MusicLibrary do
    it "returns a list of track objects" do
      music_library = MusicLibrary.new
      track_1 = Track.new("song1", "artist1")
      track_2 = Track.new("song2", "artist2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1,track_2]
    end
  
  
    it "returns a list of tracks that match the keyword" do
      music_library = MusicLibrary.new
      track_1 = Track.new("song1", "artist1")
      track_2 = Track.new("song2", "artist2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.search("song2")).to eq [track_2]
    end
  end
end