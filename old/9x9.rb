A, B = gets.chomp.split(" ").map(&:to_i)

if A < 1 || A > 9 || B < 1 || B > 9 then
  puts "-1"
else
  puts A * B
end