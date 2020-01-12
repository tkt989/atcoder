N = gets.chomp.to_i
X = gets.chomp.split(" ").map(&:to_i)

a = X.map {|n| X.last - n}
pa = a[1..-2]

sum = 0
total = 0
(0..pa.size).each do |n|
  pa[0..pa.size-n-1].combination(n).each do |l|
    total += 1
    if l.empty? then
      sum += a.first
      p "#{a.first} = #{a.first}"
      next
    end
    p "#{a.first} + " + l.join(" + ") + " = #{a.first + l.inject(:+)}"
    sum += a.first + l.inject(:+)
  end
end

avg = sum / total.to_f
p sum
p total
p avg

d = 10 ** 9 + 7
(1..N-1).each do |n|
  avg *= n
end

puts avg % d