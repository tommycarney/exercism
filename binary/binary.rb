class Binary
  def self.to_decimal(binary)
    raise ArgumentError unless binary.scan(/[^0-1]/).empty?
    decimal = []
    binary.chars.reverse.each_with_index{|i, index| decimal[index] = i.to_i*2**index }
    decimal.reduce(:+)
  end

end


module BookKeeping
  VERSION = 3
end
