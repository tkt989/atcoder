N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)
A.unshift(0)
A << 0

dist = []
sum = 0
p = 0
A.each_with_index do |a, i|
  sum += (p-a).abs
  p = a
  dist[i] = sum
end

N.times do |i|
  sum = dist[i]
  p = A[i]
  A[i+2..-1].each_with_index do |a, idx|
    sum += (p - a).abs
    p = a
  end
  puts sum
end