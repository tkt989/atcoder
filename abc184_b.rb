N, X = gets.chomp.split(" ").map(&:to_i)
S = gets.chomp

x = X
S.chars.each do |c|
  if c == "o" then
    x += 1
  else
    x -= 1 if x > 0
  end
end

puts x