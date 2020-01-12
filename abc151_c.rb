N, M = gets.chomp.split(" ").map(&:to_i)
P = []
S = []

ac = Hash.new(0)
wa = Hash.new(0)

M.times do 
  _P, _M = gets.chomp.split(" ")
  P << _P.to_i
  S << _M
end

ac[P[0]] = 0
wa[P[0]] = 0

M.times do |i|
  next if ac[P[i]] != 0

  if S[i] == "WA" then
    wa[P[i]] += 1
  else
    ac[P[i]] = 1
  end
end

wa.each do |h|
  if ac[h[0]] == 0 then
    wa[h[0]] = 0
  end
end

puts "#{ac.map{|h| h[1]}.inject(:+)} #{wa.map{|h| h[1]}.inject(:+)}"