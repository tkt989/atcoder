N = gets.chomp.to_i
L = gets.chomp.split(" ").map(&:to_i)

L.sort!

def bsearch(array, value)
  left = 0
  right = array.size
  while left + 1 < right do
    idx = left + (right - left) / 2
    if array[idx] < value then
      left = idx
    else
      right = idx
    end
  end
  left
end

sum = 0
ai = 0
while ai < L.size-2 do
  bi = ai+1
  while bi < L.size-1 do
    a = L[ai]
    b = L[bi]
    i = bsearch(L, a + b)
    sum += (i - bi)

    bi += 1
  end
  ai += 1
end

puts sum