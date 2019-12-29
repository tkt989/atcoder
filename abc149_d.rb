N, K = gets.chomp.split(" ").map(&:to_i)
R, S, P = gets.chomp.split(" ").map(&:to_i)
T = gets.chomp

t = T.chars.map {|c|
  case c
  when "r" then
    "p"
  when "s" then
    "r"
  when "p" then
    "s"
  end
}.join

chars = t.chars.reverse

i = 0
while i < chars.size do
  if chars[i] == chars[i+K] then
    chars[i+K] = "x"
  end
  i += 1
end

chars = chars.reverse

sum = 0
chars.each do |c|
  case c
  when "r" then
    sum += R
  when "s" then
    sum += S
  when "p" then
    sum += P
  end
end

puts sum