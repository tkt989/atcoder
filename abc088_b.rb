N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

s = A.sum
a = A.sort.reverse.select.with_index { |_, i| i % 2 == 0 }.sum

puts a - (s - a)