class Trinary

  def initialize(trinary)
    raise ArgumentError.new("Argument can't be nil") if trinary.nil?
    @trinary = trinary
  end

  def to_decimal
   return 0 unless @trinary.scan(/[^0-2]/).empty?
   @trinary.chars.reverse.each_with_index.reduce(0) do |sum, (i, index)|
     sum += i.to_i*3**index
   end
  end
end

module BookKeeping
  VERSION = 1
end
