#!/usr/bin/env ruby
# encoding: utf-8
class Raindrops
  DROP_SOUND = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(num)
    factors = (1..7).select {|n| num%n == 0 && DROP_SOUND.keys.include?(n)}
    return num.to_s if factors.empty?

    factors.map {|f| DROP_SOUND[f]}.join
  end

end

module BookKeeping
  VERSION = 3
end
