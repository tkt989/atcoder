N, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).sort

total = 0
A.each.with_index do |_,i|
  m = 1
  (i+K-1..A.size-1).each do |j|
    total += (A[j] - A[i]) * if K == 2 then 1 else m end
    m += 1
  end
end

puts total % (10 ** 9 + 7)