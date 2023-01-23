class Present
  def wrap(contents)
    raise "All contents have already been wrapped." unless @contents.nil?

    @contents = contents
  end

  def unwrap
    raise "No contents have been wrapped." if @contents.nil?

    @contents
  end
end
