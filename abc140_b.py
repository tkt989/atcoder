N = int(input())
A = [int(s) for s in input().split()]
B = [int(s) for s in input().split()]
C = [int(s) for s in input().split()]

prev = -9999
total = 0
for i, a in enumerate(A):
  total += B[i]
  if prev + 1 == a:
    total += C[prev - 1]
  prev = a

print(total)