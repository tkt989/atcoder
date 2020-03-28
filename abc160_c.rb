K, N = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

min = Float::INFINITY
A.each.with_index do |a, i|
  min = [K - (A[(i + 1) % N] - a) % K, (A[(i - 1) % N] - a) % K, min].min
end

puts min