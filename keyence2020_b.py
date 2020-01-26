N = int(input())
r = []

def calc(r, a):
  x = a[0]
  l = a[1]
  
  cnt = 0
  for b in r:
    bx = b[0]
    bl = b[1]
    if ((x - l + 1) <= (bx - bl + 1) and (bx - bl + 1) <= (x + l - 1)) or ((x - l + 1) <= (bx + bl - 1) and (bx + bl - 1) <= (x + l - 1)):
      cnt += 1
  cnt -= 1
  return cnt

def check(r):
  for a in r:
    if calc(r, a) != 0:
      return False
  return True

for _ in range(N):
  x, l = map(int, input().split())
  r.append([x, l, x - l + x, x + l - 1])

for a in r:
  a.append(calc(r, a))

while not check(r):
  r.pop(0)

print(r)
print(len(r))