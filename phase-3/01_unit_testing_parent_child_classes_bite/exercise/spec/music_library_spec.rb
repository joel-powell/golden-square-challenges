require "music_library"

describe MusicLibrary do
  it "returns an empty track list" do
    music_library = MusicLibrary.new
    expect(music_library.all).to eq []
  end

  it "returns a list of track objects" do
    music_library = MusicLibrary.new
    track_1 = double(:track)
    track_2 = double(:track)
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "returns a list of tracks that match the keyword" do
    music_library = MusicLibrary.new
    keyword = "song2"
    track_1 = double(:track)
    expect(track_1).to receive(:matches?).with(keyword).and_return(false)
    track_2 = double(:track)
    expect(track_2).to receive(:matches?).with(keyword).and_return(true)
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search(keyword)).to eq [track_2]
  end
end
