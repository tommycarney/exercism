class RunLengthEncoding

  def self.encode(input)
    input.each_char.inject([]) do |memo, c|
      memo.last && c == memo.last.last ? memo.last[0] += 1 : memo << [1, c]
      memo
    end.inject("") do |string, item|
      item[0].to_i > 1 ? string + item[0].to_s + item[1].to_s : string + item[1].to_s
    end
  end

  def self.decode(input)
    input.scan(/\d*.{1}/).inject("") do |decoded, pair|
      letters = pair.slice!(-1)
      times = pair.empty? ? 1 : pair.to_i
      decoded << letters * times
    end
  end
end

module BookKeeping
  VERSION = 2
end
