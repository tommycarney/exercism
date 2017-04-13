#!/usr/bin/env ruby-doc

class Complement



  def self.of_dna(string)
    string =~ /[^CGTA]/ ? '' : string.tr('CGTA', 'GCAU')
  end

end

module BookKeeping
  VERSION = 4
end
