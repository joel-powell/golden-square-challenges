def calculate_reading_time(text)
  word_count = text.split.length
  time = word_count / 200.to_f
  time.ceil
end
