class Series

  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError.new("The argument is longer than the string") if n > @digits.length
    Array.new(@digits.length - n + 1) {|i| @digits[i, n]}
  end

end
