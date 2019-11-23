N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

sum = A.inject(:+)

half = sum / 2.0

sum = 0
A.each.with_index do |n, i|
  sum += n
  if sum >= half then
    ans = []

    rest = i == A.size - 1 ? 0 : A[i+1..-1].inject(:+)
    if rest >= sum then
      ans << (rest - sum)
    else
      ans << (sum - rest)
    end

    rest = A[i..-1].inject(:+)
    sum -= n
    if rest >= sum then
      ans << (rest - sum)
    else
      ans << (sum - rest)
    end

    puts ans.min
    exit
  end
end