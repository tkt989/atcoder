s = gets.chomp
K = gets.chomp.to_i

list = []

(0..s.size).each do |n|
  (1..s.size - n).each do |l|
    list << s[n, l]
  end
end

puts list.uniq.sort[K-1]