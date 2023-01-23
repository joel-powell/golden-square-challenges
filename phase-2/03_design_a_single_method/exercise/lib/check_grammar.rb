def check_grammar(text)
  raise "Not a sentence" if text.nil? || text.empty?

  capitalised = text[0] == text[0].upcase
  punctuated = %w[. ! ?].include?(text[-1])
  capitalised && punctuated
end
