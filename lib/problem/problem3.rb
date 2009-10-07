class Problem3
  attr_reader :description

  def initialize
    @description = <<-EOS
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?
    EOS
  end

  def get_answer
    factorize(600851475143).sort.last[0]
  end

  # from http://pleac.sourceforge.net/pleac_ruby/numbers.html
  def factorize(orig)
    factors = {}
    factors.default = 0     # return 0 instead nil if key not found in hash
    n = orig
    i = 2
    sqi = 4                 # square of i
    while sqi <= n do
        while n.modulo(i) == 0 do
            n /= i
            factors[i] += 1
            # puts "Found factor #{i}"
        end
        # we take advantage of the fact that (i +1)**2 = i**2 + 2*i +1
        sqi += 2 * i + 1
        i += 1
    end

    if (n != 1) && (n != orig)
        factors[n] += 1
    end
    factors
end
end