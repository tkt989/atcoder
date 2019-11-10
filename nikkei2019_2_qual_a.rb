N = gets.chomp.to_i

cnt = 0
(1..N/2).each do |i|
  cnt += 1 if N - i != i
end

puts cnt