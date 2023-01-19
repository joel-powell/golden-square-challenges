class GrammarStats
  def initialize
    @total_checks = 0
    @correct_checks = 0
  end

  def check(text)
    raise "Not a sentence" if text.nil? || text.empty?

    @total_checks += 1
    capitalised = text[0] == text[0].upcase
    punctuated = %w[. ! ?].include?(text[-1])
    result = capitalised && punctuated
    @correct_checks += 1 if result
    result
  end

  def percentage_good
    (@correct_checks / @total_checks.to_f * 100).round
  end
end
