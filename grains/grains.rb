
module Grains
  BOARD = 64

  def self.square(squares)
    raise ArgumentError if squares <= 0 || squares > BOARD
    2**(squares-1)
  end

  def self.total
    (1..BOARD).map {|n| 2**(n-1) }.reduce(:+)
  end


end

module BookKeeping
  VERSION = 1
end
