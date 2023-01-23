def check_todo(text)
  raise "not a string" if text.nil?

  text.include?("#TODO")
end
