class ListeningHistory
  def initialize
    @tracks = []
  end

  def list
    @tracks
  end

  def add(track)
    raise "Track name cannot be empty" if track.empty?

    @tracks << track
  end
end
