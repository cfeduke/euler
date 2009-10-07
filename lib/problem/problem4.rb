class Problem4
  attr_reader :description

  def initialize
    @description = <<-EOS
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.

Find the largest palindrome made from the product of two 3-digit numbers.
    EOS
  end

  def get_answer
    highest = 0
    999.downto(100) do |x|
      999.downto(100) do |y|
        product = x * y
        highest = product if is_palindrome(product) && product > highest
      end
    end
    highest
  end

  def is_palindrome(num)
    str = num.to_s
    middle = (str.length.to_f / 2.to_f).ceil  
    left = str.slice(0, middle)
    right = str.reverse.slice(0, middle)
    left == right
  end
end