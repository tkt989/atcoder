N = gets.chomp.to_i
T = gets.chomp.split(" ").map(&:to_i)
M = gets.chomp.to_i

P = []
X = []
M.times do
  p, x = gets.chomp.split(" ").map(&:to_i)
  P << p
  X << x
end

M.times do |i|
  t = T.clone
  t[P[i]-1] = X[i]
  puts t.inject(:+)
end