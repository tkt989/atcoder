a = gets.chomp.to_i
b = gets.chomp.to_i

(1..Float::INFINITY).each do |n|
  if n * b > a then
    puts (n-1) * b
    break
  end
end