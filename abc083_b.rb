N, A, B = gets.chomp.split(" ").map(&:to_i)

sum = 0
(1..N).each do |n|
    v = n.to_s.chars.map(&:to_i).sum
    if v >= A && v <= B then
        sum += n
    end
end

puts sum