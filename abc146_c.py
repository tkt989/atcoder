import math

A, B, X = map(int, input().split())

def binsearch(left, right):
  while left + 1 < right:
    mid = int(left + (right - left) / 2)
    v = A * mid + B * len(str(mid))
    if v < X:
      left = mid
    else:
      right = mid

  v = A * right + B * len(str(right))
  if v <= X:
    return right
  v = A * left + B * len(str(left))
  if v <= X:
    return left
  return 0

print(binsearch(1, 1000000000))