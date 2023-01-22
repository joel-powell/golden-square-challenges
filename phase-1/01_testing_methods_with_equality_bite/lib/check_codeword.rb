def check_codeword(codeword)
  if codeword == "horse"
    "Correct! Come in."
  elsif codeword.chars.first == "h" && codeword.chars.last == "e"
    "Close, but nope."
  else
    "WRONG!"
  end
end
