class BeerSong


  def verse(verse_number)
    if verse_number == 2
      "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" \
     "Take one down and pass it around, #{verse_number-1} bottle of beer on the wall.\n"
   elsif verse_number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif verse_number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" \
      "Take one down and pass it around, #{verse_number-1} bottles of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)
    [].tap do |array|
      start_verse.downto(end_verse).each do |verse|
        array << verse(verse)
      end
    end.join("\n")
  end

end

module BookKeeping
  VERSION = 3
end
