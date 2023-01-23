class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
  end

  def all
    @tracks
  end

  def search(keyword)
    @tracks.select { _1.matches?(keyword) }
  end
end
