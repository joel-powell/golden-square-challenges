class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @word_count = contents.split.length
    @phone_numbers = contents.scan(/07\d{9}/)
  end

  attr_reader :title, :contents, :word_count, :phone_numbers
end
