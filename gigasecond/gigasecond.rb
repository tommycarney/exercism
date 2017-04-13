#/usr/bin/env ruby

class Gigasecond
  GIGASECOND = 10e9

  def self.from(seconds)
    seconds + GIGASECOND
  end
end


module BookKeeping
  VERSION = 5
end
