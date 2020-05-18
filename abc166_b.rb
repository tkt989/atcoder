N, K = gets.chomp.split(" ").map(&:to_i)

a = []
K.times do
  gets
  a += gets.chomp.split(" ")
end

a.uniq!
puts N - a.size