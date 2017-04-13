class Trinary

  def instantiate(trinary)
    @trinary = trinary
  end

  def to_decimal
    raise ArgumentError unless trinary.scan(/[^0-2]/).empty?
    trinary = []
    binary.chars.reverse.each_with_index{|i, index| trinary[index] = i.to_i*3**index }
    trinary.reduce(:+)
  end

end
