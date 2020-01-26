import math

N = int(input())

divisor = []
for i in range(1, int(math.sqrt(N)+1)):
  if N % i == 0:
    divisor.append([i, int(N / i)])

print(min([x[0] + x[1] for x in divisor]) - 2)