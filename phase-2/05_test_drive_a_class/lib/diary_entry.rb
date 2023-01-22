class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @words = contents.split
    @reading_position = 0
  end

  attr_reader :title, :contents

  def count_words
    @words.length
  end

  def reading_time(wpm)
    raise "Reading speed must be greater than 0" unless wpm.positive?

    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    raise "Reading speed must be greater than 0" unless wpm.positive?

    chunk_size = wpm * minutes
    chunk = @words[@reading_position, chunk_size].join(" ")
    @reading_position += chunk_size
    @reading_position = 0 if @reading_position >= count_words
    chunk
  end
end
