N, K = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)

puts h.select {|v| v >= K }.size