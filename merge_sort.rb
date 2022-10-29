# divide an array into two equal arrays until the base case is met (length = 1)
# sort the left half of the array
# sort the right half of the array
# merge the two halves together, comparing A[0] to B[0] to see which item goes first in C[]
# if A[] length is 1, or B[] length is 1, return
# otherwise if A[0] < B[0], A[0] is placed into C[A[0]].
# A[1] is then compared against B[0] and the lower is placed at the end of C[]
def merge(a, b)
  i = 0
  j = 0
  array = []
  while i < a.size && j < b.size
    if a[i] == nil
      array.concat(b)
    elsif b[j] == nil
      array.concat(a)
    elsif a[i] < b[j]
      array << a[i]
      i += 1
    else
      array << b[j]
      j += 1
    end
  end

  if i == a.size
    array.concat(b[j..(b.size)])
  elsif j == b.size
    array.concat(a[i..(a.size)])
  end

  array
end

def merge_sort(array)
  n = array.size
  if n == 1
    return array
  else
    a, b = array[0..(n/2 - 1)], array[n/2..n]
    puts "a: #{a}, b: #{b}"
    sorted_a = merge_sort(a)
    sorted_b = merge_sort(b)
    merge(sorted_a, sorted_b)
  end

end

numbers = [2, 3, 8, 7, 5, 9, 4, 1]
puts "#{merge_sort(numbers)}"