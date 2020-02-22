N, K, Q = [int(_) for _ in input().split()]

A = []
for _ in range(Q):
  A.append(int(input()) - 1)

score = [K - Q] * N

for i in range(len(A)):
  score[A[i]] += 1

for i in range(len(score)):
  if score[i] <= 0:
    print("No")
  else:
    print("Yes")