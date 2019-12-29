A, B, K = gets.chomp.split(" ").map(&:to_i)

if A >= K then
  puts "#{A - K} #{B}"
elsif B >= (K - A) then
  puts "0 #{B - (K - A)}"
else
  puts "0 0"
end