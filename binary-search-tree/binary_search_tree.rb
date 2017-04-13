class Bst
  attr_reader :data
  attr_accessor :left, :right
  VERSION = 1

  def initialize(data)
   @data = data
  end

  def data
    @data
  end

  def each
     if block_given?
       @left.each { |x| yield(x) } if @left
       yield @data
       @right.each { |x| yield(x) } if @right
     else
       enum_for
     end
  end


  def insert(value)
    if value <= @data
      insert_left(value)
    else
      insert_right(value)
    end
  end
  private

  def insert_left(v)
    if left
      left.insert(v)
    else
      self.left = Bst.new(v)
    end
  end

  def insert_right(v)
    if right
      right.insert(v)
    else
      self.right = Bst.new(v)
    end
  end


end

# http://zvkemp.github.io/blog/2014/04/25/binary-search-trees-in-ruby/

#http://practicingruby.com/articles/building-enumerable-and-enumerator
