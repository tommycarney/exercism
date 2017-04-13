class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(potential_anagrams)
      potential_anagrams.select do |candidate|
        anagaram?(candidate.downcase) && not_word?(candidate.downcase)
      end.uniq
  end

  private

  def not_word?(candidate)
    candidate != @word
  end

  def anagaram?(candidate)
    candidate.chars.sort == @word.chars.sort
  end

end

module BookKeeping
  VERSION = 2
end
