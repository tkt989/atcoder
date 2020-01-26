N, K = gets.chomp.split(" ").map(&:to_i)
H = gets.chomp.split(" ").map(&:to_i)

if K >= N then
  puts "0"
  exit
end

puts H.sort{|a,b| b<=>a}[K..-1].inject(:+)