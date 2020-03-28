X = gets.chomp.to_i

sum = 0
sum += (X / 500) * 1000
sum += ((X % 500) / 5) * 5

puts sum