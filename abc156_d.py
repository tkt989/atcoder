import math

n, a, b = [int(_) for _ in input().split()]

def modpow(a, n, mod):
  res = 1
  while n > 0:
    if n & 1:
      res = res * a % mod
    a = a * a % mod
    n >>= 1
  return res - 1

def modpow2(a, n, mod):
  res = 1
  while n > 0:
    if n & 1:
      res = res * a % mod
    a = a * a % mod
    n >>= 1
  return res - 1

# total = 0
# for num in [a, b]:
#   m = 1
#   for i in range(1, num + 1):
#     m *= (n + 1 - i) / i
#     m %= 1000000007
#   print(m)

from operator import mul
from functools import reduce

def cmb(n,r):
    r = min(n-r,r)
    if r == 0: return 1
    over = reduce(mul, range(n, n - r, -1))
    under = reduce(mul, range(1,r + 1))
    return over // under

aa = cmb(n, a)
bb = modpow(2, )
print(aa)
print(bb)
ans = (modpow(2, n, 1000000007) - aa - bb) % 1000000007
print(ans)