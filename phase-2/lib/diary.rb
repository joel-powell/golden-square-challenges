class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def all
    @entries
  end

  def count_words
    @entries.map(&:count_words).sum
  end

  def reading_time(wpm)
    raise "Reading speed must be greater than 0" unless wpm.positive?

    (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    length_limit = wpm * minutes
    readable = @entries.select { |entry| entry.count_words <= length_limit }
    readable.max_by(&:count_words)
  end
end
