N = gets.chomp.to_i
s = []
N.times {
  s << gets.chomp
}

M = gets.chomp.to_i
t = []
M.times {
  t << gets.chomp
}

max = 0
(s | t).each do |word|
  sum = s.count(word) - t.count(word)
  max = sum if sum >= max
end
puts max