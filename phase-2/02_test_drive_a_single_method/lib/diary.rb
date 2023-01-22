def make_snippet(string)
  words = string.split
  return string if words.length <= 5

  words.first(5).join(" ") << "..."
end

def count_words(string)
  string.split.length
end
