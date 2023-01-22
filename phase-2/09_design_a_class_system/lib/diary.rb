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

  def contacts
    @entries.map(&:phone_numbers).flatten.uniq
  end

  def longest_readable_entry(wpm, minutes)
    length_limit = wpm * minutes
    readable = @entries.select { |entry| entry.word_count <= length_limit }
    readable.max_by(&:word_count)
  end
end
