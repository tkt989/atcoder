A,B,C = gets.chomp.split(" ").map(&:to_i)

if A + B >= C then
  puts "Yes"
else
  puts "No"
end
