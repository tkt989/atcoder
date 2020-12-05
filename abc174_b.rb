N, D = gets.chomp.split(" ").map(&:to_i)

cnt = 0
N.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  cnt += 1 if Math.sqrt(x ** 2 + y ** 2) <= D
end

puts cnt