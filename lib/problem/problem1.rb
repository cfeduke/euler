class Problem1
  attr_reader :description

  def initialize
    @description = <<-EOS
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
EOS
  end
  
  def get_answer
    0
  end
end