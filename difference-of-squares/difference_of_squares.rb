
class Squares

  def initialize(num)
    @num = num
  end

  def square_of_sum
  @num == 0 ? 0 : (1..@num).to_a.reduce(:+)**2
  end

  def sum_of_squares
  @num == 0 ? 0 : (1..@num).to_a.reduce{|sum, n| sum += n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3

end
