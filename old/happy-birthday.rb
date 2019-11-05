a, b = gets.chomp.split(" ").map(&:to_i)

v = 16 - [a, b].min * 2

if v == 0 || v / 2 >= ([a, b].max - [a, b].min) then
  puts "Yay!"
else
  puts ":("
end