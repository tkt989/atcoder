n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split("")

if n == k then
  puts "1"
  exit
end

t = k - 1

puts 1 + ((n - k).to_f / t).ceil