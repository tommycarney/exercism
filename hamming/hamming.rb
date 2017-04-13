require_relative 'bookkeeping'
class Hamming
  include BookKeeping
  def self.compute(sequence1, sequence2)
    raise ArgumentError if sequence1.length != sequence2.length
    comparisons = sequence1.chars.zip(sequence2.chars)
    comparisons.inject(0) do |differences, comparison|
      differences += calculate_difference(comparison)
    end
  end

  def self.calculate_difference(comparison)
    return 0 if comparison.any?(&:nil?)
    comparison.first == comparison.last ? 0 : 1
  end
end


# http://work.stevegrossi.com/2014/06/20/collaborative-coding-with-exercism-io/
