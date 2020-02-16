N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

if A.select{|n| n % 2 == 0}.all?{|n| n % 3 == 0 || n % 5 == 0} then
  puts "APPROVED"
else
  puts "DENIED"
end