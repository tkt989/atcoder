N, K = [int(x) for x in input().split()]
A = [int(x) for x in input().split()]

results = []

for i in range(len(A)):
  for j in range(i + 1, len(A)):
    results.append(A[i] * A[j])

results.sort()

print(results[K - 1])