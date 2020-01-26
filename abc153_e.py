import math

H, N = [int(n) for n in input().split()]
A = []
B = []

for _ in range(N):
  a, b = [int(n) for n in input().split()]
  A.append(a)
  B.append(b)

p = []

for i in range(N):
  p.append(A[i] / B[i])

for pp in p:
  pass
  # print(pp)

maisu = []
for i in range(N):
  maisu.append(math.ceil(H / A[i]))

for m in maisu:
  print(m)