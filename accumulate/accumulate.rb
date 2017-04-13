class Array
  def accumulate(&block)
    result = []
    length = self.length - 1
    for i in 0..length
      result << block.call(self[i])
    end
    result
  end
end

module BookKeeping
  VERSION = 1
end
