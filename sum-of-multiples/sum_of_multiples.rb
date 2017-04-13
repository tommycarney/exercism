class SumOfMultiples
  def initialize(*args)
    @args = args
  end

  def to(number)
      @args.map do |arg|
        (0...number).select {|num| (num %arg).zero? }
      end.flatten.uniq.reduce(:+)
  end
end
