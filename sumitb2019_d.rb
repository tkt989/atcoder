N = gets.chomp.to_i
S = gets.chomp.chars

cnt = 0
(0..999).each do |n|
  s = "%03d" % n
  i = S.find_index(s[0])
  next if i == nil
  j = S[i+1..-1].find_index(s[1])
  next if j == nil
  k = S[i+j+2..-1].find_index(s[2])
  next if k == nil
  cnt += 1
end

puts cnt