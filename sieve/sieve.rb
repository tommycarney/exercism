class Sieve
  def initialize(number)
    @max = number
    @primes = (0..@max).to_a
  end

  def primes
    @primes[0] = @primes[1] = nil
    @primes.each do |p|
      #skip if nil
      next unless p

      break if p*p > @max
      (p*p).step(@max,p) {|m| @primes[m] = nil}
    end
  @primes.compact
  end
end

module BookKeeping
  VERSION = 1
end
