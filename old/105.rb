n = gets.chomp.to_i

result = []
(1..n).each do |m|
  list = (1..m).select { |d| m % d == 0 }
  result << m if list.size == 8
end

puts result.select { |m| m % 2 == 1}.size