K, X = gets.chomp.split(" ").map(&:to_i)

if K * 500 >= X then
  puts "Yes"
else
  puts "No"
end