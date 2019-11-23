X, Y = gets.chomp.split(" ").map(&:to_i)

total = 0

total += 100000 if X == 3
total += 200000 if X == 2
total += 300000 if X == 1

total += 100000 if Y == 3
total += 200000 if Y == 2
total += 300000 if Y == 1

total += 400000 if X == 1 && Y == 1

puts total