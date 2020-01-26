import operator
import functools

N = int(input())

def calc(first, last, digit, limit):
  cnt = 0

  if digit == 0:
    if int(first + last) <= limit:
      cnt += 1
    return cnt
  
  lst = []
  fixed = []

  for n in reversed(range(1, digit+1)):
    pas = False
    for d in reversed(range(0, 9+1)):
      v = first
      v += "".join(map(str, fixed))
      v += str(d)
      v += "0" * (n - 1)
      v += last

      if int(v) <= limit:
        lst.append(d + 1)
        fixed.append(d)
        pas = True
        break
    
    if not pas:
      fixed.append(0)
  
  if len(lst) == 0:
    return cnt
  return cnt + int(functools.reduce(operator.mul, lst, 1))

cnt = 0
n = 1

while n <= N:
  first = list(str(n))[0]
  last = list(str(n))[-1]

  if first == "0" or last == "0":
    n += 1
    continue

  if first == last and int(first) <= N:
    cnt += 1
  
  digit = 0
  while True:
    total = calc(last, first, digit, N)
    if total == 0:
      break
    cnt += total
    digit += 1
  n += 1

print(cnt)