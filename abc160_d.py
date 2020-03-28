N, X, Y = [int(_) for _ in input().split()]

for k in range(1, N):
  cnt = 0
  ss = ""
  for s in range(1, N - 1):
    g = s + k
    print("s = %d, g = %d" % (s, g))
    if (s <= X and Y <= g):
      ss += "!"
      pass
    elif (s <= X and g < Y):
      cnt += 1
    elif (X < s):
      cnt += 1
    else:
      cnt += 1
  print("%d %s " % (cnt, ss))