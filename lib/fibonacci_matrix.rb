require 'matrix'

# from http://en.literateprograms.org/Fibonacci_numbers_%28Ruby%29
FIB_MATRIX = Matrix[[1,1],[1,0]]
def fib(n)
  (FIB_MATRIX**(n))[0,0]
end
