N = gets.chomp.to_i
s = []
t = []

N.times do
  _s, _t = gets.chomp.split(" ")
  s << _s
  t << _t.to_i
end

X = gets.chomp

idx = s.index(X)

if t[idx+1..-1].empty? then
  puts "0"
  exit
end
puts t[idx+1..-1].inject(:+)