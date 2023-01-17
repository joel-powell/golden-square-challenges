def make_snippet(string)
  split = string.split
  split.pop
  return split.join(' ') + "..."
end

# puts(make_snippet("hello my name is chris leech"))