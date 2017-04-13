class Bob
  ALPHABET = /[a-zA-Z]/
  
  def self.hey(remark)
    if remark.nil? || remark.strip.empty?
      "Fine. Be that way!"
    elsif (remark.scan(ALPHABET) - ("A".."Z").to_a).empty? && !(remark.scan(ALPHABET).empty?)
      "Whoa, chill out!"
    elsif remark.chars[-1] == "?"
      "Sure."
    else
      "Whatever."
    end
  end

end
