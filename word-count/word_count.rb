
class Phrase
  WORD_REGEX = /(?!\W)[\w']+(?<!\W)/

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
   @phrase.downcase.scan(WORD_REGEX)
   .each_with_object(Hash.new(0)) do |word, wordcount|
     wordcount[word] += 1
   end
  end

end

module BookKeeping
  VERSION = 1
end
