def bisect_left(arr, target, left = 0, hi = arr.size)
  right = hi - 1

  while left <= right
    middle = (left + right)/2;

    if arr[middle] < target
      left = middle + 1;
    elsif arr[middle] > target
      right = middle - 1;
    else
      i = middle
      while i > 0 && arr[i-1] == arr[middle]
        i -= 1
      end
      return i
    end
  end
  return left
end

n = gets.to_i
ls = gets.split.map(&:to_i)
ls.sort!
last = nil
count = 0

i = 0
while i < ls.size - 2
  j = i + 1
  while j < ls.size - 1
    k = j + 1

    x = bisect_left(ls, ls[i] + ls[j], k)
    count += x - k

    j += 1
  end
  i += 1
end

puts count
