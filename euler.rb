# multiples of 3 or 5 

def mult(num)
  num -= 1
  return 0 if num < 3
  if num % 5 == 0 || num % 3 == 0
    num + mult(num)
  else
    mult(num)
  end
end

puts "#{mult(10)}"

# Even Fibonacci Values

def fibonacci(n)
  if n == 0 || n == 1
    return 1
  else 
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end

def sum_even_fib(limit)
  sum = 0
  n = 1
  while fibonacci(n) <= limit
    sum += fibonacci(n) if fibonacci(n) % 2 == 0
    n += 1
  end
  return sum
end

puts "#{sum_even_fib(4000000)}"


