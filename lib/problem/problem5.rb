class Problem5
  attr_reader :description

  def initialize
    @description = <<-EOS
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
    EOS
  end
  
  def get_answer
    result = 2520
    while true do
      break if is_equally_divisible_by_1_to_20 result
      result += 2520
    end

    result
  end

  def is_equally_divisible_by_1_to_20(p)
    11.upto(20) do |x|
      return false if (p % x != 0)
    end
    return true
  end

end