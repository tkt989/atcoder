A, B = gets.chomp.split(" ").map(&:to_i)
 
n = A - (B * 2)
 
if n <= 0 then
  puts "0"
else
  puts n
end