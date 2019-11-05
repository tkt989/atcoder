N = gets.chomp.to_i
D, X = gets.chomp.split(" ").map(&:to_i)
A = []
N.times do
  A << gets.chomp.to_i
end

cnt = X
(1..D).each do |i|
  A.each do |a|
    cnt += 1 if i % a == 1 or a == 1
  end
end

puts cnt