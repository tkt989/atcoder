S = input()

odd = ["R", "U", "D"]
even = ["L", "U", "D"]

if all([e in even for i, e in enumerate(S) if (i + 1) % 2 == 0]) and \
   all([o in odd for i, o in enumerate(S) if (i + 1) % 2 == 1]):
  print("Yes")
else:
  print("No")