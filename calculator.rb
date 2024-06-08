class Calculator

  def add(str)
    format_string = str.scan(/-?\d+/).map(&:to_i)
    format_string.sum
  end

end
