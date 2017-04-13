class PrimeFactors

  def self.for(number)
    num = number
    prime_factors = []
    divisor = 2
    while num > 1
      if num % divisor == 0
        prime_factors << divisor
        num = num / divisor
      else
        divisor += 1
      end
    end
    prime_factors
  end
end
