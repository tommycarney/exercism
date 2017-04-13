
class Pangram
  def self.pangram?(phrase)
  (("A".."Z").to_a - phrase.upcase.chars.uniq).empty? ? true : false
  end

end

module BookKeeping
  VERSION = 4
end
