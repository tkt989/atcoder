s = gets.chomp
w = gets.chomp.to_i

str = s.split("").select.with_index do |c, i|
  i % w == 0
end.join()

puts str