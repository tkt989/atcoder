N = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)

cost = [0] * N
cost[0] = 0
cost[1] = cost[0] + (h[0] - h[1]).abs

(2..N-1).each do |i|
    cost[i] = [cost[- 1] + (h[i-1] - h[i]).abs, cost[i-2] + (h[i-2] - h[i]).abs]
end

puts cost[N-1]