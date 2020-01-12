N, K, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

(0..K).each do |k|
  a = A.clone
  a << k
  avg = a.inject(:+) / a.size.to_f

  if avg >= M then
    puts k.to_i
    exit
  end
end

puts "-1"