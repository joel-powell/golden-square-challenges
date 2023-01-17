def make_snippet(string)
  # string_array = string.split
  # word_count = string_array.length
  # first_five_words = string_array[0..4].join(" ")
  # first_five_words << "..." if word_count > 5
  # first_five_words

  if string.split.length > 5
    split = string.split
    return split[0..4].join(' ') + "..."
  end
  string
end

def count_words(string)
  string.split.length
end