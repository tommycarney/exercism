module CoreExtensions
  module Array
    module Collections

      def keep(&block)
        self.each_with_index do |n, i|
          block.call(n) ? self[i] : self[i] = nil
        end.compact
      end
      def discard(&block)
        self.each_with_index do |n, i|
          block.call(n) ? self[i] = nil : self[i]
        end.compact
      end
    end
  end
end

Array.include(CoreExtensions::Array::Collections)


#http://www.justinweiss.com/articles/3-ways-to-monkey-patch-without-making-a-mess/
