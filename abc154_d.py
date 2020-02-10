N, K = [int(x) for x in input().split()]
P = [int(x) for x in input().split()]

def calc(n):
  return sum(range(1, n + 1)) / n

sums = [0]
s = 0
for i in range(N):
  s += calc(P[i])
  sums.append(s)

max_value = -1
max_index = -1

# print(sums)
for i in range(N - K + 1):
  s = sums[i+K] - sums[i]
  # print(i)
  # print(i+K)
  max_value = max(max_value, s)
  if max_value == s:
    max_index = i

print(max_value)
# print(sum([calc(P[i]) for i in range(max_index, max_index + K)]))