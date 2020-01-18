N = int(input())
L = list(map(int, input().split()))

L.sort()

def bsearch(array, value):
  left = 0
  right = len(array)
  while left + 1 < right:
    idx = int(left + (right - left) / 2)
    if array[idx] < value:
      left = idx
    else:
      right = idx
  return left

sum = 0
ai = 0
while ai < len(L) - 2:
  bi = ai + 1
  while bi < len(L) - 1:
    a = L[ai]
    b = L[bi]
    i = bsearch(L, a + b)
    sum += (i - bi)

    bi += 1
  ai += 1

print(sum)