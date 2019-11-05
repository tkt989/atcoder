a, b = gets.chomp.split(" ").map(&:to_i)

if a + b == 15 then
  puts "+"
elsif a * b == 15 then
  puts "*"
else
  puts "x"
end