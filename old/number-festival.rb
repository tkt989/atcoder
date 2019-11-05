N, X = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

max = a.max()
cnt = 0
a.each do |v|
  if v + X >= max then
    cnt += 1
  end
end

puts cnt