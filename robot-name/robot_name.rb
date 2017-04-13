
class Robot
  attr_reader :name
  @@names = []
  def initialize
    @name = name_factory
  end

  def reset
    @name = name_factory
  end

  def generate_name
    ("A".."Z").to_a.sample(2).join("") + (1..9).to_a.sample(3).join("")
  end

  def name_factory
    name =  generate_name until @@names.include?(name) == false
    @@names << name
    name
 end



end



module BookKeeping
  VERSION = 2
end
