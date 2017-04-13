module Prime
  def self.nth(n, primes=[], number=0)
    raise ArgumentError if n == 0
    while primes.length < n
      primes << number unless is_prime?(number) == false
      number += 1
    end

   return primes[n-1]
  end

  def self.is_prime?(num)
    return false if num <= 1
    Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
    true
  end
end


module BookKeeping
  VERSION = 1
end
