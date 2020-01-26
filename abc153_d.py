import math

H = int(input())

memo = {}

def f(n):
  if n <= 1:
    return 1
  if n in memo:
    return memo[n]
  
  memo[n] = 1 + f(math.floor(n / 2.0)) * 2
  return memo[n]

print(f(H))