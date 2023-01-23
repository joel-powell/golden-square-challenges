class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    string = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    number_of_repeats = @io.gets.chomp
    @io.puts "Here is your result:"
    @io.puts string * number_of_repeats.to_i
  end
end