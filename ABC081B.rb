N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

cnt = 0
a = A
while true do
  break if !(a.all? {|n| n % 2 == 0})
  a = a.map {|n| n / 2 }
  cnt += 1
end

puts cnt