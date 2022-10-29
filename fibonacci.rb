# Using iteration, write a method #fibs which takes a number and returns an array containing 
# that many numbers from the fibonacci sequence.

def fibs(n)
  arr = []
  i = 0
  while i < n
    if i == 0
      arr << i
    elsif i == 1 || i == 2
      arr << 1
    else
      arr << arr[-1] + arr[-2]
    end
    i += 1
  end
  arr
end

## write a method #fibs_rec that solves the same problem with recursion

def fibs_rec(num)
  # base cases
  return [] if num.zero?
  return [0] if num == 1
  return [0, 1] if num <= 2

  # recursive case
  fib = fibs_rec(num - 1)
  fib << fib[-2] + fib[-1]

  # return array
  fib
end

puts fibs(6)
puts fibs_rec(6)

## Recursive Explanation 
## fibs_rec(6) calls fibs_rec(5)
## fibs_rec(5) calls fibs_rec(4)
## fibs_rec(4) calls fibs_rec(3)
##  fibs_rec(3) calls fibs_rec(2)
##   fibs_rec(2) return:
##    [0, 1]
##
##  now we need to unwind the stack call
##
##  fibs_rec(3) picks up. fib returned from fibs_rec(2) is [0,1].  It adds fib[-2] + fib[-1] onto the end and returns:
##    [0, 1, 1]
##  fibs_rec(4) picks up. fib returned from fibs_rec(3) is [0,1,1].  It adds fib[-2] + fib[-1] onto the end and returns:
##    [0, 1, 1, 2]
## fibs_rec(5) picks up. fib returned from fibs_rec(4) is [0, 1, 1, 2].  It adds fib[-2] + fib[-1] onto the end and:
##    [0, 1, 1, 2, 3]
##  fibs_rec(6) picks up. fib returned from fibs_rec(5) is [0, 1, 1, 2, 3]. It adds fib[-2] + fib[-1] onto the end and:
##    [0, 1, 1, 2, 3, 5]