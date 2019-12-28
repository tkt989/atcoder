S = gets.chomp

cnt = 0
if S.size == 1 then
  puts "0"
  exit
elsif S.size % 2 == 0 then
  s = S[0..S.size/2-1]
  t = S[S.size/2..-1]
  cnt = 0
  s.chars.zip(t.chars.reverse).each do |v|
    cnt += 1 if v[0] != v[1]
  end
else
  s = S[0..S.size/2-1]
  t = S[S.size/2+1..-1]
  s.chars.zip(t.chars.reverse).each do |v|
    cnt += 1 if v[0] != v[1]
  end
end

puts cnt
